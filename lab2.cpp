#include <iostream>
#include <vector>
#include <chrono>

// Функція для інтенсивних обчислень (навантаження на CPU)
void heavyComputation(size_t size) {
    std::vector<double> a(size, 1.001);
    std::vector<double> b(size, 1.002);
    std::vector<double> c(size, 0.0);

    // Основний цикл обчислень (гарно векторизується при -O3)
    for (size_t i = 0; i < size; ++i) {
        for (size_t j = 0; j < 100; ++j) {
            c[i] += a[i] * b[i] + static_cast<double>(j);
        }
    }
    
    double sum = 0;
    for (size_t i = 0; i < size; ++i) {
        sum += c[i];
    }
    std::cout << "Result check sum: " << sum << std::endl;
}

int main() {
    std::cout << "=== LAB 2: Performance Measurement ===" << std::endl;
    
    // Фіксуємо час початку виконання програми
    auto start_time = std::chrono::high_resolution_clock::now();
    
    // Запускаємо обчислення (розмір масиву 5 мільйонів елементів)
    size_t data_size = 5000000;
    heavyComputation(data_size);
    
    // Фіксуємо час завершення
    auto end_time = std::chrono::high_resolution_clock::now();
    
    // Обчислюємо тривалість у мілісекундах та секундах
    std::chrono::duration<double, std::milli> elapsed_ms = end_time - start_time;
    std::chrono::duration<double> elapsed_sec = end_time - start_time;
    
    // Виводимо детальну статистику для звіту (Пункт 2)
    std::cout << "----------------------------------------" << std::endl;
    std::cout << "[STATISTICS] Execution time: " << elapsed_sec.count() << " seconds (" 
              << elapsed_ms.count() << " ms)" << std::endl;
    std::cout << "[STATISTICS] Processed elements: " << data_size << std::endl;
    std::cout << "=== Done ===" << std::endl;
    
    return 0;
}