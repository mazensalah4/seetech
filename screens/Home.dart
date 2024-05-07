import 'package:flutter/material.dart';
import 'package:qwerttt/screens/Robot.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<List<Map<String, dynamic>>> companiesList = [
    [
      {
        'title': 'ECO NOZOM',
        'details':
            'Eco Systems has the softwares that supports your business, whether you are a supermarket, store, restaurant, company or factory, Eco Systems has the software you need to manage your business more efficiently. Our cashier software is easy to use, affondable, and management software will help you track everything from inventory to finances. Choose from a one time purchase or a simple monthly subscription, and start using Eco Systems today.',
        'image': 'images/IMG-20240217-WA0004.jpg',
        'address': 'Ahmed El Sawy St., Off Makram Ebaid St., Nasr City, Cairo.',
      },
      {
        'title': 'NET DOT NET',
        'details':
            '(Net dot Net)offers digital and IT services management from relying on paper documents to streamline business processes and aid integration within structured data systems. However, as technology continues to advance and businesses face increasing pressure to stay competitive in B2B markets, you need to consider the benefits of digitalization',
        'image': 'images/IMG-20240217-WA0005.jpg',
        'address': '',
      },
      {
        'title': 'TRUE TECH',
        'details':
            'Specialized in software for warehousing, accounts, cashier, and barcode systems for all companies, shops, hypermarkets and ERP programs. Experience since 1996. We have clients working in all sectors in all parts of Egypt. We serve all commercial activities and provide customers with all computers, attendance, departure and barcode devices. Specialized cashier devices rely on our programs for ease and speed of application through a strong database.',
        'image': 'images/IMG-20240217-WA0006.jpg',
        'address':
            '2/4 Saray El Koba Towers, Beside El Tahra Palace, Heliopolis, Cairo',
      },
      {
        'title': 'MGS',
        'details':
            'MGS offers this brief overview of Al-Ameen Accounting and Warehousing programs technical specifications. The program is designed to suit the needs of small, medium and large companies, helping them understand and control their financial and accounting affairs. It is now able to issue electronic invoices to suit their service, commercial, industrial, and contracting needs.',
        'image': 'images/IMG-20240217-WA0007.jpg',
        'address':
            '12 galal Shalash St., Off El Gazaer St., New Maadi, Maadi, Cairo',
      },
      {
        'title': '3S GROUP',
        'details':
            '3S secure systems SAE provides integrated solutions @ e-government programs, attendance & acess control systems, surveillance & long-range camera systems, smart cards & card printers & electrical cables (Amman cables - bicc)',
        'image': 'images/IMG-20240217-WA0008.jpg',
        'address':
            '54 Ahmed Fakhry St., Nasr city, Cairo Beside Attijariwafa Bank',
      },
    ],

    // Interface 2
    [
      {
        'title': 'SECURITY SYSTEM',
        'details':
            'We provide integrated solutions that suit the needs of our customers. Our journey began towards developing and discovering ideas that generate opportunities and contribute to developing innovative solutions to deal with challenges in the field of information technology, surveillance systems, and developing innovative services to contribute to raising the level of services for all sectors of our clients',
        'image': 'images/IMG-20240224-WA0007.jpg',
        'address': 'sadat city , elmonofeya 1st commercial market - office 49',
      },
      {
        'title': 'JW FRAME',
        'details':
            'JWframe integrated solutions speicalizes in providing infrastructure for digital data transmission solutions including data, voice, and video. Setting up and establishing electronic surveillance systems through designing, implementing, operating & maintaining these networks',
        'image': 'images/IMG-20240224-WA0006.jpg',
        'address':
            '15 Mohamed mostafa hamam , flat 8 , floor 3 , nasr city , cairo in front of el akkad hospital',
      },
      {
        'title': 'POWER SECURITY',
        'details':
            'Power Security Solutions is one of the leading companies in the field of Security and light Current systems. Our company supplies, installs and maintains surveillance camera systems, fire alarms, burglar alarms, audio devices, UPS devices, stabilizer , as well as approved fire pump sets. Our company offers discounts of up to 40% on some systems.',
        'image': 'images/IMG-20240224-WA0005.jpg',
        'address': ' Rd.14, El Qanatir El khayriyah , kaliobeya',
      },
      {
        'title': 'INETWORK',
        'details':
            'iNetwork solutions is an IT service provider located in Egypt specialized in designing, implementing and maintaining IT infrastructure targeting Middle east market , we provide reliable IT infrastructure supporting business demands and profitable IT business solutions.',
        'image': 'images/IMG-20240224-WA0004.jpg',
        'address':
            '196 sameh gado st., 6th district, 6th October, giza in front of mall of arabia',
      },
      {
        'title': 'GOLDEN TECHNOLOGY',
        'details':
            'golden technology has experience since 2013 across diversified industries and over 100 successful projects including national projects. Golden technology is a leading system integrator and service provider through partnership with leading vendors using latest technology and applying best practice using our deep industry expertise knowledge to deliver state-of-art solutions to help organizations meet and exceed their business demands',
        'image': 'images/IMG-20240224-WA0003.jpg',
        'address':
            ' El mithaq ST. El safwa tower . Zahraa nasr city , nasr city , cairo above B-tech',
      },
    ],

    // Interface 3
    [
      {
        'title': 'MIRROURFUL',
        'details':
            'Mirrorful is a software company that specializes in crafting digital experiences for businesses. With our team of talented experts, we strive to be the beautiful, powerful, and trustful project that mirror your brands vision in the digital world.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.27_b5279cb6.jpg',
        'address': 'Cairo, Egypt',
      },
      {
        'title': 'EVYX',
        'details':
            'EvyX is one of the leading, integrated, experienced digital marketing agencies in U.K and Egypt with perfection at its core. We make the dreamy success to reality, with the experience we gained over the years. With our competitive pricing plans, you can build your visual platform, your social media strategy, online personal portfolio, digital presence, app development in the most perfect way.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.27_34fec08f.jpg',
        'address': 'Cairo,Egypt',
      },
      {
        'title': 'APPSTCH',
        'details':
            'AppsTCH is an Egyptian shareholding company based in Cairo partnered with world class business applications vendors, including SAP ERP and Oracle Technology Solutions. We are specialized in providing value added services for Enterprise business applications especially Enterprise Resources Planning (ERP), Primavera Engineering & Constructions Solution and Business Intelligence (BI) solutions across industries.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.26_b4d3dbd5.jpg',
        'address': 'Cairo,Egypt',
      },
      {
        'title': 'ADVERT LEAP',
        'details':
            'Bespoke Software Development and Digital Transformation, From Conception to Delivery, Trusted software development delivered intelligently, designed to unlock growth. We will be with you every step of the way – from initial planning to delivery, and beyond. We design, develop and deliver intelligent high-tech bespoke software solu tions for SMEs & Funded Startups. Whether you’re driven by a need to modernise, to gain a competitive edge, or to overcome a frustrating operational blocker, we’re adept at crafting bespoke solutions that deliver real business value that will help your business grow. We have over 6+ years of experience across diverse sectors (from e-commerce, education and healthcare to Affiliate and financial services), and world-class expertise in creating web applications and services using a vast range of technologies.​We design and build tailor-made web, mobile and cloud software solutions that help businesses unlock growth.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.26_2e6f8498.jpg',
        'address': 'Cairo,Egypt',
      },
      {
        'title': 'MODULUS',
        'details':
            'Modulus is a cloud-based ERP software, designed to meet all your business requirements, to unleash the full potential of your business. Its user-friendly interface, along with a secure database and excellent client support, ensures an automated experience.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.26_d3df16ef.jpg',
        'address': 'Cairo,Egypt',
      },
      // Add more companies as needed
    ],

    // Interface 4
    [
      {
        'title': 'MIRROURFUL',
        'details':
            'Mirrorful is a software company that specializes in crafting digital experiences for businesses. With our team of talented experts, we strive to be the beautiful, powerful, and trustful project that mirror your brands vision in the digital world.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.27_b5279cb6.jpg',
        'address': 'Cairo, Egypt',
      },
      {
        'title': 'EVYX',
        'details':
            'EvyX is one of the leading, integrated, experienced digital marketing agencies in U.K and Egypt with perfection at its core. We make the dreamy success to reality, with the experience we gained over the years. With our competitive pricing plans, you can build your visual platform, your social media strategy, online personal portfolio, digital presence, app development in the most perfect way.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.27_34fec08f.jpg',
        'address': 'Cairo,Egypt',
      },
      {
        'title': 'APPSTCH',
        'details':
            'AppsTCH is an Egyptian shareholding company based in Cairo partnered with world class business applications vendors, including SAP ERP and Oracle Technology Solutions. We are specialized in providing value added services for Enterprise business applications especially Enterprise Resources Planning (ERP), Primavera Engineering & Constructions Solution and Business Intelligence (BI) solutions across industries.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.26_b4d3dbd5.jpg',
        'address': 'Cairo,Egypt',
      },
      {
        'title': 'ADVERT LEAP',
        'details':
            'Bespoke Software Development and Digital Transformation, From Conception to Delivery, Trusted software development delivered intelligently, designed to unlock growth. We will be with you every step of the way – from initial planning to delivery, and beyond. We design, develop and deliver intelligent high-tech bespoke software solu tions for SMEs & Funded Startups. Whether you’re driven by a need to modernise, to gain a competitive edge, or to overcome a frustrating operational blocker, we’re adept at crafting bespoke solutions that deliver real business value that will help your business grow. We have over 6+ years of experience across diverse sectors (from e-commerce, education and healthcare to Affiliate and financial services), and world-class expertise in creating web applications and services using a vast range of technologies.​We design and build tailor-made web, mobile and cloud software solutions that help businesses unlock growth.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.26_2e6f8498.jpg',
        'address': 'Cairo,Egypt',
      },
      {
        'title': 'MODULUS',
        'details':
            'Modulus is a cloud-based ERP software, designed to meet all your business requirements, to unleash the full potential of your business. Its user-friendly interface, along with a secure database and excellent client support, ensures an automated experience.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.26_d3df16ef.jpg',
        'address': 'Cairo,Egypt',
      },
      // Add more companies as needed
    ],
  ];
  final List<List<Map<String, dynamic>>> companiesList2 = [
    // Interface 5
    [
      {
        'title': 'ISEC',
        'details':
            'ISEC is an Egyptian cyber defense consultancy company who is expert in the cyber defense field. We are a service-oriented organization specialized in technical security consultancy services, such as malware defense, IT risk management and information security advisory. With a niche and dedicated malware defense and security advisory team, we can approach cyber defense from a holistic approach.',
        'image': 'images/IMG-20240224-WA0013.jpg',
        'address': '41 Zaker Hussein, 5th floor, Nasr City, Cairo',
      },
      {
        'title': 'SMART-SYS',
        'details':
            'With more than 10 years of wide experience in business and technology of professionals with a strong academic background in the field of IT & Cyber Security.',
        'image': 'images/IMG-20240224-WA0012.jpg',
        'address': 'Sheraton Buildings -Elnozha, Cairo',
      },
      {
        'title': 'ABSEGA',
        'details':
            'ABSEGA is a security services provider founded in 2017 by a group of technical security consultants. It combines the added value of Managed Security Service Providers (MSSP) and Managed Detection & Response providers. We help your organization by implementing and/or improving threat detection, response, management and continuous monitoring capabilities — all delivered as a service',
        'image': 'images/IMG-20240224-WA0011.jpg',
        'address': 'Plot 67,90th South Teseen, New Cairo,, Cairo',
      },
      {
        'title': 'EXED SOLUTIONS',
        'details':
            'Founded in 2007 As a #cyber_security focused IT provider, Fixed Solutions is providing state-of-the-art, cutting edge and world class cyber security solutions through strategic partnerships with the top cyber security vendors.',
        'image': 'images/IMG-20240224-WA0010.jpg',
        'address': '26 Ali Amin, Al Manteqah Al Oula, Nasr City, Cairo',
      },
      {
        'title': 'CYBERTEQ',
        'details':
            'Cyberteq is an innovative Information and Communication Technology Consulting Company, established since 1997. In the era of digitalization, Cyberteq enables it’s customers to take full advantage of the latest digital technologies and networks in a secure manner.',
        'image': 'images/IMG-20240224-WA0009.jpg',
        'address': '4th Floor, Building 4, Arkan Plaza, Sheikh Zayed, Cairo',
      },
    ],
  ];
  final List<String> interfaceTitles = [
    'SOFTWARE',
    'NETWORK',
    'ERBSYSTEM',
    'SUPPLISE',
  ];
  final List<String> interfaceTitles1 = [
    'SECURITY',
  ];

  final List<String> interfaceImages = [
    'images/IMG-20240208-WA0007.jpg',
    'images/IMG-20240208-WA0006.jpg',
    'images/IMG-20240120-WA0013.jpg',
    'images/IMG-20240120-WA0010.jpg',
  ];
  final List<String> interfaceImages1 = [
    'images/IMG-20240120-WA0009.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'See Tech',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/back.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: Image.asset(
              "images/project1.png",
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            top: 180,
            left: 30,
            right: 30,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: interfaceTitles.length,
                  itemBuilder: (context, index) {
                    return InterfaceCard(
                      companies: companiesList[index],
                      interfaceTitle: interfaceTitles[index],
                      interfaceImage: interfaceImages[index],
                    );
                  },
                ),
              ],
            ),
          ),
          Positioned(
            left: 130,
            right: -40,
            bottom: 115,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: interfaceTitles1.length,
                  itemBuilder: (context, index) {
                    return InterfaceCard2(
                      interfaceTitle1: interfaceTitles1[index],
                      interfaceImage1: interfaceImages1[index],
                      companies2: companiesList2[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 150,
        height: 50,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtherPage()),
            );
          },
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: Text(
            'Ask me',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatbotApp();
  }
}

class InterfaceCard extends StatelessWidget {
  final List<Map<String, dynamic>> companies;
  final String interfaceTitle;
  final String interfaceImage;

  InterfaceCard({
    required this.companies,
    required this.interfaceTitle,
    required this.interfaceImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CompaniesPage(
              companies: companies,
              pageTitle: interfaceTitle,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                interfaceImage,
                width: 100,
                height: 60,
              ),
              SizedBox(height: 10),
              Text(
                interfaceTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InterfaceCard2 extends StatelessWidget {
  final List<Map<String, dynamic>> companies2;
  final String interfaceTitle1;
  final String interfaceImage1;

  InterfaceCard2({
    required this.companies2,
    required this.interfaceTitle1,
    required this.interfaceImage1,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CompaniesPage(
              companies: companies2,
              pageTitle: interfaceTitle1,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                interfaceImage1,
                width: 100,
                height: 60,
              ),
              SizedBox(height: 10),
              Text(
                interfaceTitle1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CompaniesPage extends StatefulWidget {
  final List<Map<String, dynamic>> companies;
  final String pageTitle;

  CompaniesPage({required this.companies, required this.pageTitle});

  @override
  _CompaniesPageState createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.pageTitle,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/back.jpg",
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            physics:
                NeverScrollableScrollPhysics(), // هنا نقوم بتعيين الـ physics للـ ListView

            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    "images/project1.png",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage(widget.companies[_currentIndex]['image']),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              ListView(
                // هنا نضع بطاقة الشركة داخل ListView
                shrinkWrap:
                    true, // تحديد shrinkWrap يجعل القائمة تتوسع وفقًا لمحتواها
                physics:
                    NeverScrollableScrollPhysics(), // تعطيل التمرير لهذه القائمة الداخلية
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child:
                        CompanyCard(company: widget.companies[_currentIndex]),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  if (_currentIndex > 0) {
                    _currentIndex--;
                  }
                });
              },
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  if (_currentIndex < widget.companies.length - 1) {
                    _currentIndex++;
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  final Map<String, dynamic> company;

  CompanyCard({required this.company});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(10),
      child: SizedBox(
        // Set a flexible height for the Card
        height:
            MediaQuery.of(context).size.height * 0.5, // 70% of screen height
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  company['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  company['details'],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(8),
              //   child: GestureDetector(
              //     onTap: () {
              //       _launchMaps(company['address']);
              //     },
              //     child: Text(
              //       'Address: ${company['address']} (View on Map)',
              //       style: TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.blue,
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    _launchMaps(company['address']);
                  },
                  child: Text(
                    'Address: ${company['address']} (View on Map)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchMaps(String address) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=${Uri.encodeQueryComponent(address)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
