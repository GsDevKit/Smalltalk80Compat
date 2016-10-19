baseline
baseline: spec
  <baseline>
  spec for: #'gemstone64' do: [ spec
        package: 'SmalltalkCompat-Basic';
        package: 'SmalltalkCompat-Tests-Basic'
          with: [ spec requires: 'SmalltalkCompat-Basic' ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('SmalltalkCompat-Basic');
        group: 'Tests' with: #('SmalltalkCompat-Tests-Basic');
        yourself ]
