FROM eclipse-temurin:20-jdk

# add --insecure for a quick fix if your network requires certificates
# -L means follow redirects
RUN curl -L -O https://github.com/synthetichealth/synthea/releases/download/master-branch-latest/synthea-with-dependencies.jar
 
RUN printf '{\n\
  "name": "Generated Keep Module", \n\
  "states": { \n\
    "Initial": { \n\
      "type": "Initial", \n\
      "name": "Initial", \n\
      "conditional_transition": [ \n\
        { \n\
          "transition": "Keep", \n\
          "condition": { \n\
            "condition_type": "Or", \n\
            "conditions": [ \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "237602007", \n\
                    "display": "Metabolic syndrome X (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "431855005", \n\
                    "display": "Chronic kidney disease stage 1 (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "431856006", \n\
                    "display": "Chronic kidney disease stage 2 (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "431857002", \n\
                    "display": "Chronic kidney disease stage 4 (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "433144002", \n\
                    "display": "Chronic kidney disease stage 3 (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "15777000", \n\
                    "display": "Prediabetes" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "44054006", \n\
                    "display": "Diabetes mellitus type 2 (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "302870006", \n\
                    "display": "Hypertriglyceridemia (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "80394007", \n\
                    "display": "Hyperglycemia (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "55822004", \n\
                    "display": "Hyperlipidemia" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "127013003", \n\
                    "display": "Disorder of kidney due to diabetes mellitus (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "128302006", \n\
                    "display": "Chronic hepatitis C (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "59621000", \n\
                    "display": "Essential hypertension (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "61977001", \n\
                    "display": "Chronic type B viral hepatitis (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "368581000119106", \n\
                    "display": "Neuropathy due to type 2 diabetes mellitus (disorder)" \n\
                  } \n\
                ] \n\
              }, \n\
              { \n\
                "condition_type": "Active Condition", \n\
                "codes": [ \n\
                  { \n\
                    "system": "SNOMED-CT", \n\
                    "code": "422034002", \n\
                    "display": "Retinopathy due to type 2 diabetes mellitus (disorder)" \n\
                  } \n\
                ] \n\
              } \n\
            ] \n\
          } \n\
        }, \n\
        { \n\
          "transition": "Terminal" \n\
        } \n\
      ] \n\
    }, \n\
    "Terminal": { \n\
      "type": "Terminal", \n\
      "name": "Terminal" \n\
    }, \n\
    "Keep": { \n\
      "type": "Terminal", \n\
      "name": "Keep" \n\
    } \n\
  }, \n\
  "gmf_version": 2 \n\
} \n\
 ' > keep.json

CMD java -jar synthea-with-dependencies.jar -p 99 -k keep.json --exporter.years_of_history=1 --exporter.fhir.export=true --exporter.fhir_stu3.export=true --exporter.fhir_dstu2.export=true --exporter.csv.export=true