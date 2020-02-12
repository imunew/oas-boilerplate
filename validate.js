const validator = require('oas-validator')
const YAML = require('js-yaml')
const fs = require('fs')
const spec = fs.readFileSync('./dist/apispec.yml', 'utf-8')
const yaml = YAML.safeLoad(spec)
validator.validate(yaml, {}, (err) => {
    if (err) {
        console.log(err)
        process.exit(1)
    }
})
