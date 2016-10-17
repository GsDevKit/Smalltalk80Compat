baseline
baseline: spec
  <baseline>
  spec for: #'gemstone64' do: [ spec
        package: 'Smalltalk80Compat-Basic';
        package: 'Smalltalk80Compat-Tests-Basic'
          with: [ spec requires: 'Smalltalk80Compat-Basic' ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('Smalltalk80Compat-Basic');
        group: 'tests' with: #('Smalltalk80Compat-Tests-Basic');
        yourself ]