# Industry
configfile: "./modules/industry/config.yaml"
validate(config["industry"], "../modules/industry/schema.yaml")


module module_industry:
    snakefile: "../modules/industry/industry.smk"
    config: config["industry"]
use rule * from module_industry as module_industry_*
