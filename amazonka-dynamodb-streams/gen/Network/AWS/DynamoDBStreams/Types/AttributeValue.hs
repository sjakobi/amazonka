{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDBStreams.Types.AttributeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDBStreams.Types.AttributeValue where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents the data for an attribute.
--
-- Each attribute value is described as a name-value pair. The name is the
-- data type, and the value is the data itself.
--
-- For more information, see
-- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes Data Types>
-- in the /Amazon DynamoDB Developer Guide/.
--
-- /See:/ 'newAttributeValue' smart constructor.
data AttributeValue = AttributeValue'
  { -- | An attribute of type Binary Set. For example:
    --
    -- @\"BS\": [\"U3Vubnk=\", \"UmFpbnk=\", \"U25vd3k=\"]@
    bS :: Prelude.Maybe [Prelude.Base64],
    -- | An attribute of type Boolean. For example:
    --
    -- @\"BOOL\": true@
    bOOL :: Prelude.Maybe Prelude.Bool,
    -- | An attribute of type Number. For example:
    --
    -- @\"N\": \"123.45\"@
    --
    -- Numbers are sent across the network to DynamoDB as strings, to maximize
    -- compatibility across languages and libraries. However, DynamoDB treats
    -- them as number type attributes for mathematical operations.
    n :: Prelude.Maybe Prelude.Text,
    -- | An attribute of type String. For example:
    --
    -- @\"S\": \"Hello\"@
    s :: Prelude.Maybe Prelude.Text,
    -- | An attribute of type Null. For example:
    --
    -- @\"NULL\": true@
    nULL :: Prelude.Maybe Prelude.Bool,
    -- | An attribute of type Map. For example:
    --
    -- @\"M\": {\"Name\": {\"S\": \"Joe\"}, \"Age\": {\"N\": \"35\"}}@
    m :: Prelude.Maybe (Prelude.Map Prelude.Text AttributeValue),
    -- | An attribute of type Binary. For example:
    --
    -- @\"B\": \"dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk\"@
    b :: Prelude.Maybe Prelude.Base64,
    -- | An attribute of type List. For example:
    --
    -- @\"L\": [ {\"S\": \"Cookies\"} , {\"S\": \"Coffee\"}, {\"N\", \"3.14159\"}]@
    l :: Prelude.Maybe [AttributeValue],
    -- | An attribute of type String Set. For example:
    --
    -- @\"SS\": [\"Giraffe\", \"Hippo\" ,\"Zebra\"]@
    sS :: Prelude.Maybe [Prelude.Text],
    -- | An attribute of type Number Set. For example:
    --
    -- @\"NS\": [\"42.2\", \"-19\", \"7.5\", \"3.14\"]@
    --
    -- Numbers are sent across the network to DynamoDB as strings, to maximize
    -- compatibility across languages and libraries. However, DynamoDB treats
    -- them as number type attributes for mathematical operations.
    nS :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AttributeValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bS', 'attributeValue_bS' - An attribute of type Binary Set. For example:
--
-- @\"BS\": [\"U3Vubnk=\", \"UmFpbnk=\", \"U25vd3k=\"]@
--
-- 'bOOL', 'attributeValue_bOOL' - An attribute of type Boolean. For example:
--
-- @\"BOOL\": true@
--
-- 'n', 'attributeValue_n' - An attribute of type Number. For example:
--
-- @\"N\": \"123.45\"@
--
-- Numbers are sent across the network to DynamoDB as strings, to maximize
-- compatibility across languages and libraries. However, DynamoDB treats
-- them as number type attributes for mathematical operations.
--
-- 's', 'attributeValue_s' - An attribute of type String. For example:
--
-- @\"S\": \"Hello\"@
--
-- 'nULL', 'attributeValue_nULL' - An attribute of type Null. For example:
--
-- @\"NULL\": true@
--
-- 'm', 'attributeValue_m' - An attribute of type Map. For example:
--
-- @\"M\": {\"Name\": {\"S\": \"Joe\"}, \"Age\": {\"N\": \"35\"}}@
--
-- 'b', 'attributeValue_b' - An attribute of type Binary. For example:
--
-- @\"B\": \"dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk\"@--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'l', 'attributeValue_l' - An attribute of type List. For example:
--
-- @\"L\": [ {\"S\": \"Cookies\"} , {\"S\": \"Coffee\"}, {\"N\", \"3.14159\"}]@
--
-- 'sS', 'attributeValue_sS' - An attribute of type String Set. For example:
--
-- @\"SS\": [\"Giraffe\", \"Hippo\" ,\"Zebra\"]@
--
-- 'nS', 'attributeValue_nS' - An attribute of type Number Set. For example:
--
-- @\"NS\": [\"42.2\", \"-19\", \"7.5\", \"3.14\"]@
--
-- Numbers are sent across the network to DynamoDB as strings, to maximize
-- compatibility across languages and libraries. However, DynamoDB treats
-- them as number type attributes for mathematical operations.
newAttributeValue ::
  AttributeValue
newAttributeValue =
  AttributeValue'
    { bS = Prelude.Nothing,
      bOOL = Prelude.Nothing,
      n = Prelude.Nothing,
      s = Prelude.Nothing,
      nULL = Prelude.Nothing,
      m = Prelude.Nothing,
      b = Prelude.Nothing,
      l = Prelude.Nothing,
      sS = Prelude.Nothing,
      nS = Prelude.Nothing
    }

-- | An attribute of type Binary Set. For example:
--
-- @\"BS\": [\"U3Vubnk=\", \"UmFpbnk=\", \"U25vd3k=\"]@
attributeValue_bS :: Lens.Lens' AttributeValue (Prelude.Maybe [Prelude.ByteString])
attributeValue_bS = Lens.lens (\AttributeValue' {bS} -> bS) (\s@AttributeValue' {} a -> s {bS = a} :: AttributeValue) Prelude.. Lens.mapping Prelude._Coerce

-- | An attribute of type Boolean. For example:
--
-- @\"BOOL\": true@
attributeValue_bOOL :: Lens.Lens' AttributeValue (Prelude.Maybe Prelude.Bool)
attributeValue_bOOL = Lens.lens (\AttributeValue' {bOOL} -> bOOL) (\s@AttributeValue' {} a -> s {bOOL = a} :: AttributeValue)

-- | An attribute of type Number. For example:
--
-- @\"N\": \"123.45\"@
--
-- Numbers are sent across the network to DynamoDB as strings, to maximize
-- compatibility across languages and libraries. However, DynamoDB treats
-- them as number type attributes for mathematical operations.
attributeValue_n :: Lens.Lens' AttributeValue (Prelude.Maybe Prelude.Text)
attributeValue_n = Lens.lens (\AttributeValue' {n} -> n) (\s@AttributeValue' {} a -> s {n = a} :: AttributeValue)

-- | An attribute of type String. For example:
--
-- @\"S\": \"Hello\"@
attributeValue_s :: Lens.Lens' AttributeValue (Prelude.Maybe Prelude.Text)
attributeValue_s = Lens.lens (\AttributeValue' {s} -> s) (\s@AttributeValue' {} a -> s {s = a} :: AttributeValue)

-- | An attribute of type Null. For example:
--
-- @\"NULL\": true@
attributeValue_nULL :: Lens.Lens' AttributeValue (Prelude.Maybe Prelude.Bool)
attributeValue_nULL = Lens.lens (\AttributeValue' {nULL} -> nULL) (\s@AttributeValue' {} a -> s {nULL = a} :: AttributeValue)

-- | An attribute of type Map. For example:
--
-- @\"M\": {\"Name\": {\"S\": \"Joe\"}, \"Age\": {\"N\": \"35\"}}@
attributeValue_m :: Lens.Lens' AttributeValue (Prelude.Maybe (Prelude.HashMap Prelude.Text AttributeValue))
attributeValue_m = Lens.lens (\AttributeValue' {m} -> m) (\s@AttributeValue' {} a -> s {m = a} :: AttributeValue) Prelude.. Lens.mapping Prelude._Map

-- | An attribute of type Binary. For example:
--
-- @\"B\": \"dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk\"@--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
attributeValue_b :: Lens.Lens' AttributeValue (Prelude.Maybe Prelude.ByteString)
attributeValue_b = Lens.lens (\AttributeValue' {b} -> b) (\s@AttributeValue' {} a -> s {b = a} :: AttributeValue) Prelude.. Lens.mapping Prelude._Base64

-- | An attribute of type List. For example:
--
-- @\"L\": [ {\"S\": \"Cookies\"} , {\"S\": \"Coffee\"}, {\"N\", \"3.14159\"}]@
attributeValue_l :: Lens.Lens' AttributeValue (Prelude.Maybe [AttributeValue])
attributeValue_l = Lens.lens (\AttributeValue' {l} -> l) (\s@AttributeValue' {} a -> s {l = a} :: AttributeValue) Prelude.. Lens.mapping Prelude._Coerce

-- | An attribute of type String Set. For example:
--
-- @\"SS\": [\"Giraffe\", \"Hippo\" ,\"Zebra\"]@
attributeValue_sS :: Lens.Lens' AttributeValue (Prelude.Maybe [Prelude.Text])
attributeValue_sS = Lens.lens (\AttributeValue' {sS} -> sS) (\s@AttributeValue' {} a -> s {sS = a} :: AttributeValue) Prelude.. Lens.mapping Prelude._Coerce

-- | An attribute of type Number Set. For example:
--
-- @\"NS\": [\"42.2\", \"-19\", \"7.5\", \"3.14\"]@
--
-- Numbers are sent across the network to DynamoDB as strings, to maximize
-- compatibility across languages and libraries. However, DynamoDB treats
-- them as number type attributes for mathematical operations.
attributeValue_nS :: Lens.Lens' AttributeValue (Prelude.Maybe [Prelude.Text])
attributeValue_nS = Lens.lens (\AttributeValue' {nS} -> nS) (\s@AttributeValue' {} a -> s {nS = a} :: AttributeValue) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.FromJSON AttributeValue where
  parseJSON =
    Prelude.withObject
      "AttributeValue"
      ( \x ->
          AttributeValue'
            Prelude.<$> (x Prelude..:? "BS" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "BOOL")
            Prelude.<*> (x Prelude..:? "N")
            Prelude.<*> (x Prelude..:? "S")
            Prelude.<*> (x Prelude..:? "NULL")
            Prelude.<*> (x Prelude..:? "M" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "B")
            Prelude.<*> (x Prelude..:? "L" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "SS" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "NS" Prelude..!= Prelude.mempty)
      )

instance Prelude.Hashable AttributeValue

instance Prelude.NFData AttributeValue
