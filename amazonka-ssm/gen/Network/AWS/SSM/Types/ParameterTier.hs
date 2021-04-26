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
-- Module      : Network.AWS.SSM.Types.ParameterTier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ParameterTier
  ( ParameterTier
      ( ..,
        ParameterTierAdvanced,
        ParameterTierIntelligentTiering,
        ParameterTierStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParameterTier = ParameterTier'
  { fromParameterTier ::
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

pattern ParameterTierAdvanced :: ParameterTier
pattern ParameterTierAdvanced = ParameterTier' "Advanced"

pattern ParameterTierIntelligentTiering :: ParameterTier
pattern ParameterTierIntelligentTiering = ParameterTier' "Intelligent-Tiering"

pattern ParameterTierStandard :: ParameterTier
pattern ParameterTierStandard = ParameterTier' "Standard"

{-# COMPLETE
  ParameterTierAdvanced,
  ParameterTierIntelligentTiering,
  ParameterTierStandard,
  ParameterTier'
  #-}

instance Prelude.FromText ParameterTier where
  parser = ParameterTier' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParameterTier where
  toText (ParameterTier' x) = x

instance Prelude.Hashable ParameterTier

instance Prelude.NFData ParameterTier

instance Prelude.ToByteString ParameterTier

instance Prelude.ToQuery ParameterTier

instance Prelude.ToHeader ParameterTier

instance Prelude.ToJSON ParameterTier where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ParameterTier where
  parseJSON = Prelude.parseJSONText "ParameterTier"
