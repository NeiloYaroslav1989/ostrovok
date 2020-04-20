package ua.neilo.ostrovok.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.neilo.ostrovok.domain.Payment;
import ua.neilo.ostrovok.repository.PaymentRepo;

import java.util.List;

@Service
public class PaymentService {
    private final PaymentRepo paymentRepo;

    public PaymentService(PaymentRepo paymentRepo) {
        this.paymentRepo = paymentRepo;
    }

    public Payment findById(Long id) {
        return paymentRepo.findById(id).orElse(null);
    }

    public List<Payment> findAll() {
        return paymentRepo.findAll();
    }

    public void save(Payment payment) {
        paymentRepo.save(payment);
    }

    public void deleteById(Long id) {
        paymentRepo.deleteById(id);
    }

    public List<Payment> findPaymentsByClient_Id(Long id) {
        return paymentRepo.findPaymentsByClient_Id(id);
    }




}
