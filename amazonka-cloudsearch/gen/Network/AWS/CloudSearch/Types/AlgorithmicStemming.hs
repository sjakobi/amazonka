{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.AlgorithmicStemming
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.AlgorithmicStemming
  ( AlgorithmicStemming
      ( ..,
        AlgorithmicStemmingFull,
        AlgorithmicStemmingLight,
        AlgorithmicStemmingMinimal,
        AlgorithmicStemmingNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AlgorithmicStemming = AlgorithmicStemming'
  { fromAlgorithmicStemming ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AlgorithmicStemmingFull :: AlgorithmicStemming
pattern AlgorithmicStemmingFull = AlgorithmicStemming' "full"

pattern AlgorithmicStemmingLight :: AlgorithmicStemming
pattern AlgorithmicStemmingLight = AlgorithmicStemming' "light"

pattern AlgorithmicStemmingMinimal :: AlgorithmicStemming
pattern AlgorithmicStemmingMinimal = AlgorithmicStemming' "minimal"

pattern AlgorithmicStemmingNone :: AlgorithmicStemming
pattern AlgorithmicStemmingNone = AlgorithmicStemming' "none"

{-# COMPLETE
  AlgorithmicStemmingFull,
  AlgorithmicStemmingLight,
  AlgorithmicStemmingMinimal,
  AlgorithmicStemmingNone,
  AlgorithmicStemming'
  #-}

instance Prelude.FromText AlgorithmicStemming where
  parser = AlgorithmicStemming' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlgorithmicStemming where
  toText (AlgorithmicStemming' x) = x

instance Prelude.Hashable AlgorithmicStemming

instance Prelude.NFData AlgorithmicStemming

instance Prelude.ToByteString AlgorithmicStemming

instance Prelude.ToQuery AlgorithmicStemming

instance Prelude.ToHeader AlgorithmicStemming

instance Prelude.FromXML AlgorithmicStemming where
  parseXML = Prelude.parseXMLText "AlgorithmicStemming"
