package ua.neilo.ostrovok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.neilo.ostrovok.domain.Client;
import ua.neilo.ostrovok.domain.Payment;
import ua.neilo.ostrovok.service.ClientService;
import ua.neilo.ostrovok.service.PaymentService;

import java.util.List;

@Controller
public class PaymentController {
    private final PaymentService paymentService;
    private final ClientService clientService;

    public PaymentController(PaymentService paymentService, ClientService clientService) {
        this.paymentService = paymentService;
        this.clientService = clientService;
    }

    @GetMapping("/clients/paymentlist/{id}")
    public String getPaymentListPage(@PathVariable("id") Long id,
                                     Model model) {
        Client client = clientService.findById(id);
        List<Payment> payments = paymentService.findPaymentsByClient_Id(id);

        model.addAttribute("client", client);
        model.addAttribute("payments", payments);

        return "paymentList";
    }

    @GetMapping("/paymentAdd/{id}")
    public String getPaymentAddPage(@PathVariable("id") Long id, Model model) {
        model.addAttribute("client", clientService.findById(id));
        return "paymentAdd";
    }

    @PostMapping("/paymentAdd")
    public String paymentAdd(@RequestParam("paymentPeriod-year") String year,
                             @RequestParam("paymentPeriod-month") String month,
                             @RequestParam("payment") int payment,
                             @RequestParam("clientId") Long clientId
    ) {
        Payment clientPayment = new Payment();
        clientPayment.setClient(clientService.findById(clientId));
        clientPayment.setYear(year);
        clientPayment.setMonth(month);
        clientPayment.setPayment(payment);

        paymentService.save(clientPayment);

        return "redirect:/clients/paymentlist/" + clientId;
    }

    @GetMapping("/payment/edit/{clientId}/{paymentId}")
    public String getPaymentEditPage(@PathVariable("clientId") Long clientId,
                                     @PathVariable("paymentId") Long paymentId,
                                     Model model) {
        Payment payment = paymentService.findById(paymentId);
        Client client = clientService.findById(clientId);

        model.addAttribute("payment", payment);
        model.addAttribute("client", client);

        return "paymentEdit";
    }

    @PostMapping("/paymentEdit")
    public String uploadPayment(@RequestParam("paymentPeriod-year") String year,
                                @RequestParam("paymentPeriod-month") String month,
                                @RequestParam("payment") int payment,
                                @RequestParam("paymentId") Long paymentId,
                                @RequestParam("clientId") Long clientId,
                                Model model) {

        Payment clientPayment = paymentService.findById(paymentId);

        clientPayment.setYear(year);
        clientPayment.setMonth(month);
        clientPayment.setPayment(payment);

        paymentService.save(clientPayment);

        return "redirect:/clients/paymentlist/" + clientId;
    }



    @GetMapping("/payment/delete/{clientId}/{paymentId}")
    public String deletePayment(@PathVariable("clientId") Long clientId,
                                @PathVariable("paymentId") Long paymentId) {
        paymentService.deleteById(paymentId);
        return "redirect:/clients/paymentlist/" + clientId;
    }



}
