//
//  MainView.swift
//  ITProduct
//
//  Created by Kirill Magerya on 18.02.2021.
//

import UIKit


class MainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAppearance()
    }
    
    private func setupAppearance() {
        backgroundColor = .systemBackground
        setupGeneratorLabel()
        setupSimpleNumbersLabel()
        setupFibonacciNumbersLabel()
        setupPicker()
    }
    
    let generatorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 30)
        label.text = "Генератор"
        return label
    }()
    
    let simpleNumbersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22)
        label.text = "Простые числа"
        return label
    }()
    
    let fibonacciNumbersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22)
        label.text = "Числа Фибоначчи"
        return label
    }()
    
    let picker: CustomPickerView = {
        let picker = CustomPickerView()
        picker.translatesAutoresizingMaskIntoConstraints = false
        return picker
    }()
    
    private func setupGeneratorLabel() {
        addSubview(generatorLabel)
        NSLayoutConstraint.activate([
            generatorLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            generatorLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    private func setupSimpleNumbersLabel() {
        addSubview(simpleNumbersLabel)
        NSLayoutConstraint.activate([
            simpleNumbersLabel.topAnchor.constraint(equalTo: generatorLabel.bottomAnchor, constant: 35),
            simpleNumbersLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 20),
        ])
    }
    
    private func setupFibonacciNumbersLabel() {
        addSubview(fibonacciNumbersLabel)
        NSLayoutConstraint.activate([
            fibonacciNumbersLabel.topAnchor.constraint(equalTo: generatorLabel.bottomAnchor, constant: 35),
            fibonacciNumbersLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupPicker() {
        addSubview(picker)
        NSLayoutConstraint.activate([
            picker.topAnchor.constraint(equalTo: simpleNumbersLabel.bottomAnchor, constant: 20),
            picker.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            picker.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            picker.heightAnchor.constraint(equalToConstant: 600)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}