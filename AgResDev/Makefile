.DEFAULT_GOAL = all

XT = ./xt.pl
DATE=$(shell date +%I:%M%p)
CHECK=\033[32m✔\033[39m
HR=\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#

DSP=NEW-level4-dsp.xml
EXAMPLE=NEW-level4-example.xml
RULES=NEW-level4-schematron-rules.xml
ISORULES=NEW-level4-schematron-iso-rules.xml
DSP2SCHEMATRON=NEW-dsp2sch-dcds.xsl
ISO=iso-schematron.xsl
#ISO=skeleton1-5.xsl
DSPXSD=dcmi-dsp-voa3r.xsd

TEMPREPORT=test-report.tmp
TESTREPORT=test-report.xml

#
# BUILD DOCS
#

rules: 
	@echo "\n${HR}"
	@echo "Building rules (${RULES}) from DSP (${DSP})..."
	@echo "${HR}\n"
	@${XT} ${DSP} ${DSP2SCHEMATRON} > ${RULES} 
	@ls -al ${RULES} 
	@echo "Rules have been created. Maybe now you want to create ISO rules (make isorules)"

isorules:
	@echo "\n${HR}"
	@echo "Building ISO rules (${ISORULES}) from rules (${RULES})..."
	@echo "${HR}\n"
	@${XT} ${RULES} ${ISO} > ${ISORULES}
	@ls -al ${ISORULES} 
	@echo "ISO Rules have been created. Maybe now you want to test them (make test)"


test:
	@echo "\n${HR}"
	@echo "Testing VOA3R L4 example with ISO RULES..."
	@echo "${HR}\n"
	@${XT} ${EXAMPLE} ${ISORULES} > ${TEMPREPORT}
	@xmllint --pretty 1 ${TEMPREPORT} -o ${TESTREPORT}
	@rm ${TEMPREPORT}
	@ls -al ${TESTREPORT}
	@echo "Report saved in ${TESTREPORT}. `grep -c Error ${TESTREPORT}` errors found!"

install:
	@echo "\n${HR}"
	@echo "Releasing dev files (NEW*) to ../AgRes folder (VOA3R*)"
	@echo "${HR}\n"
	cp -i NEW-level4-dsp.xml ../AgRes/VOA3R-level4-dsp.xml
	cp -i NEW-level4-example.xml ../AgRes/VOA3R-level4-example.xml
	cp -i NEW-level4-schematron-rules.xml ../AgRes/VOA3R-level4-schematron-rules.xml
	@ls -al NEW-level4-dsp.xml NEW-level4-example.xml NEW-level4-schematron-rules.xml
	@ls -al ../AgRes/VOA3R-level4-*
	@echo "All done!"
	


all: rules isorules test
