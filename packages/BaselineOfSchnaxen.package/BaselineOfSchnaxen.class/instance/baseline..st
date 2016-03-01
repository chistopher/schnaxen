baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Schnaxen-Core';
				package: 'Schnaxen-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('Schnaxen-Core');
				group: 'Tests' with: #('Schnaxen-Tests')]