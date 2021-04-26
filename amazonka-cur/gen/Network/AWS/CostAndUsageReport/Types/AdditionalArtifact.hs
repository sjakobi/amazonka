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
-- Module      : Network.AWS.CostAndUsageReport.Types.AdditionalArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostAndUsageReport.Types.AdditionalArtifact
  ( AdditionalArtifact
      ( ..,
        AdditionalArtifactATHENA,
        AdditionalArtifactQUICKSIGHT,
        AdditionalArtifactREDSHIFT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The types of manifest that you want AWS to create for this report.
newtype AdditionalArtifact = AdditionalArtifact'
  { fromAdditionalArtifact ::
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

pattern AdditionalArtifactATHENA :: AdditionalArtifact
pattern AdditionalArtifactATHENA = AdditionalArtifact' "ATHENA"

pattern AdditionalArtifactQUICKSIGHT :: AdditionalArtifact
pattern AdditionalArtifactQUICKSIGHT = AdditionalArtifact' "QUICKSIGHT"

pattern AdditionalArtifactREDSHIFT :: AdditionalArtifact
pattern AdditionalArtifactREDSHIFT = AdditionalArtifact' "REDSHIFT"

{-# COMPLETE
  AdditionalArtifactATHENA,
  AdditionalArtifactQUICKSIGHT,
  AdditionalArtifactREDSHIFT,
  AdditionalArtifact'
  #-}

instance Prelude.FromText AdditionalArtifact where
  parser = AdditionalArtifact' Prelude.<$> Prelude.takeText

instance Prelude.ToText AdditionalArtifact where
  toText (AdditionalArtifact' x) = x

instance Prelude.Hashable AdditionalArtifact

instance Prelude.NFData AdditionalArtifact

instance Prelude.ToByteString AdditionalArtifact

instance Prelude.ToQuery AdditionalArtifact

instance Prelude.ToHeader AdditionalArtifact

instance Prelude.ToJSON AdditionalArtifact where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AdditionalArtifact where
  parseJSON = Prelude.parseJSONText "AdditionalArtifact"
