.onAttach <- function(...) {

privacy_text <- "
At Irregularly Scheduled Programming, we want to give you the best possible experience to ensure that you enjoy our service of open source R packages today, tomorrow, and in the future. It is also our goal to be as open and transparent as possible with our users about the personal data we collect to provide that service, how it is used, and with whom it is shared.

We are contacting you today to let you know that we will be making some changes to our Privacy Policy, which will be effective from May 25th. These changes will reflect the increased transparency requirements of the EU General Data Protection Regulation (known as the 'GDPR').

We have always strived to provide you with clear and simple information about the personal data we collect and use and how we protect your personal data in our Privacy Policy. Today we are simply announcing enhancements to the Privacy Policy which clarify and provide additional information about:

- the fact that as a freely distributed R package, I have no interest in your personal information;

- I have no way of collecting said information;

- the long-winded text here is mainly added as a humorous jab at the entire process.

If you've found this package to be useful, please consider sending a thanks my way. I can be best contacted on Twitter at @carroll_jono. There, now you have more of my personal info than I have yours.

Please click here to read the revised Privacy Policy, which will be effective from May 25, 2018.

If you have any questions, please contact us using the Contact Form available at https://github.com/jonocarroll/tidyGDPR.

Thank you for using R."

  packageStartupMessage(paste(strwrap(privacy_text), collapse = "\n"))

}
