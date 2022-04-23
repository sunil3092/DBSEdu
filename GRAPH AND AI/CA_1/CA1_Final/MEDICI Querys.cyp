// Creating the Family Nodes, the nodes will represent the family names, upon which relationships are built.
CREATE (n:FAMILY {name:'PUCCI'});
CREATE (n:FAMILY {name:'PERUZZI'}); 
CREATE (n:FAMILY {name:'STROZZI'}); 
CREATE (n:FAMILY {name:'BISCHERI'}); 
CREATE (n:FAMILY {name:'LAMBERTES'});
CREATE (n:FAMILY {name:'CASTELLAN'});
CREATE (n:FAMILY {name:'RIDOLF'});
CREATE (n:FAMILY {name:'TORNABUON'});
CREATE (n:FAMILY {name:'GUADAGNI'});
CREATE (n:FAMILY {name:'ALBIZZI'});
CREATE (n:FAMILY {name:'BARBADORI'});
CREATE (n:FAMILY {name:'MEDICI'});
CREATE (n:FAMILY {name:'GINORI'});
CREATE (n:FAMILY {name:'SALVIATI'});
CREATE (n:FAMILY {name:'ACCIAIUOL'});
CREATE (n:FAMILY {name:'PAZZI'});

// Create Relations Between Family's
// As Relationships are two way hence there are group of querys to make two way relationships

// MEDICI - SALVIATI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'SALVIATI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'SALVIATI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// MEDICI - BARBADORI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'BARBADORI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'BARBADORI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// MEDICI - ALBIZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'ALBIZZI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'ALBIZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// MEDICI - TORNABUON
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'TORNABUON'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'TORNABUON'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// MEDICI - RIDOLF
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'RIDOLF'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'RIDOLF'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// MEDICI - ACCIAIUOL
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'ACCIAIUOL'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'MEDICI' AND n2.name = 'ACCIAIUOL'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// SALVIATI - PAZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'SALVIATI' AND n2.name = 'PAZZI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'SALVIATI' AND n2.name = 'PAZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// BARBADORI - CASTELLAN
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'BARBADORI' AND n2.name = 'CASTELLAN'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'BARBADORI' AND n2.name = 'CASTELLAN'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// STROZZI - CASTELLAN
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'CASTELLAN' AND n2.name = 'STROZZI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'CASTELLAN' AND n2.name = 'STROZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// CASTELLAN - PERUZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'CASTELLAN' AND n2.name = 'PERUZZI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'CASTELLAN' AND n2.name = 'PERUZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// PERUZZI - STROZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'STROZZI' AND n2.name = 'PERUZZI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'STROZZI' AND n2.name = 'PERUZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// BISCHERI - PERUZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'PERUZZI' AND n2.name = 'BISCHERI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// BISCHERI - STROZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'BISCHERI' AND n2.name = 'STROZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'STROZZI' AND n2.name = 'BISCHERI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// BISCHERI - PERUZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'BISCHERI' AND n2.name = 'PERUZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// RIDOLF - STROZZI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'RIDOLF' AND n2.name = 'STROZZI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'RIDOLF' AND n2.name = 'STROZZI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// TORNABUON - RIDOLF
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'TORNABUON' AND n2.name = 'RIDOLF'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'TORNABUON' AND n2.name = 'RIDOLF'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// TORNABUON - GUADAGNI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'TORNABUON' AND n2.name = 'GUADAGNI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'TORNABUON' AND n2.name = 'GUADAGNI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// ALBIZZI - GUADAGNI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'ALBIZZI' AND n2.name = 'GUADAGNI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'ALBIZZI' AND n2.name = 'GUADAGNI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// ALBIZZI - GINORI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'ALBIZZI' AND n2.name = 'GINORI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'ALBIZZI' AND n2.name = 'GINORI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// GUADAGNI - LAMBERTES
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'GUADAGNI' AND n2.name = 'LAMBERTES'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'GUADAGNI' AND n2.name = 'LAMBERTES'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// GUADAGNI - BISCHERI
MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'GUADAGNI' AND n2.name = 'BISCHERI'
CREATE (n1)-[mrg:MARRAGE]->(n2);

MATCH (n1:FAMILY), (n2:FAMILY)
WHERE n1.name = 'GUADAGNI' AND n2.name = 'BISCHERI'
CREATE (n2)-[mrg:MARRAGE]->(n1);

// Using GDS to Create a Named Graph
CALL gds.graph.create(
  'MEDICIGraph',
  'FAMILY',
  'MARRAGE'
);

// Using GDS to calculate page rank
CALL gds.pageRank.write('MEDICIGraph', {
  maxIterations: 20,
  dampingFactor: 0.85,
  writeProperty: 'pagerank'
})
YIELD nodePropertiesWritten, ranIterations;

// Using GDS to calculate eigenvector
CALL gds.eigenvector.write('MEDICIGraph', {
  maxIterations: 20,
  writeProperty: 'centrality'
})
YIELD nodePropertiesWritten, ranIterations;

// Using GDS to compute betweenness
CALL gds.betweenness.write('MEDICIGraph', { writeProperty: 'betweenness' })
YIELD centralityDistribution, nodePropertiesWritten
RETURN centralityDistribution.min AS minimumScore, centralityDistribution.mean AS meanScore, nodePropertiesWritten;

// Using GDS to calculate degree
CALL gds.degree.write('MEDICIGraph', { writeProperty: 'degree' })
YIELD centralityDistribution, nodePropertiesWritten
RETURN centralityDistribution.min AS minimumScore, centralityDistribution.mean AS meanScore, nodePropertiesWritten;

//Using GDS to calculate closeness
CALL gds.alpha.closeness.write({
  nodeProjection: 'FAMILY',
  relationshipProjection: 'MARRAGE',
  writeProperty: 'centrality'
}) YIELD nodes, writeProperty;