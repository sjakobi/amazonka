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
-- Module      : Network.AWS.MachineLearning.Types.Algorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.Algorithm
  ( Algorithm
      ( ..,
        AlgorithmSgd
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The function used to train an @MLModel@. Training choices supported by
-- Amazon ML include the following:
--
-- -   @SGD@ - Stochastic Gradient Descent.
-- -   @RandomForest@ - Random forest of decision trees.
newtype Algorithm = Algorithm'
  { fromAlgorithm ::
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

pattern AlgorithmSgd :: Algorithm
pattern AlgorithmSgd = Algorithm' "sgd"

{-# COMPLETE
  AlgorithmSgd,
  Algorithm'
  #-}

instance Prelude.FromText Algorithm where
  parser = Algorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText Algorithm where
  toText (Algorithm' x) = x

instance Prelude.Hashable Algorithm

instance Prelude.NFData Algorithm

instance Prelude.ToByteString Algorithm

instance Prelude.ToQuery Algorithm

instance Prelude.ToHeader Algorithm

instance Prelude.FromJSON Algorithm where
  parseJSON = Prelude.parseJSONText "Algorithm"
