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
-- Module      : Network.AWS.S3.Types.IntelligentTieringAccessTier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.IntelligentTieringAccessTier
  ( IntelligentTieringAccessTier
      ( ..,
        IntelligentTieringAccessTierARCHIVEACCESS,
        IntelligentTieringAccessTierDEEPARCHIVEACCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype IntelligentTieringAccessTier = IntelligentTieringAccessTier'
  { fromIntelligentTieringAccessTier ::
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

pattern IntelligentTieringAccessTierARCHIVEACCESS :: IntelligentTieringAccessTier
pattern IntelligentTieringAccessTierARCHIVEACCESS = IntelligentTieringAccessTier' "ARCHIVE_ACCESS"

pattern IntelligentTieringAccessTierDEEPARCHIVEACCESS :: IntelligentTieringAccessTier
pattern IntelligentTieringAccessTierDEEPARCHIVEACCESS = IntelligentTieringAccessTier' "DEEP_ARCHIVE_ACCESS"

{-# COMPLETE
  IntelligentTieringAccessTierARCHIVEACCESS,
  IntelligentTieringAccessTierDEEPARCHIVEACCESS,
  IntelligentTieringAccessTier'
  #-}

instance Prelude.FromText IntelligentTieringAccessTier where
  parser = IntelligentTieringAccessTier' Prelude.<$> Prelude.takeText

instance Prelude.ToText IntelligentTieringAccessTier where
  toText (IntelligentTieringAccessTier' x) = x

instance Prelude.Hashable IntelligentTieringAccessTier

instance Prelude.NFData IntelligentTieringAccessTier

instance Prelude.ToByteString IntelligentTieringAccessTier

instance Prelude.ToQuery IntelligentTieringAccessTier

instance Prelude.ToHeader IntelligentTieringAccessTier

instance Prelude.FromXML IntelligentTieringAccessTier where
  parseXML = Prelude.parseXMLText "IntelligentTieringAccessTier"

instance Prelude.ToXML IntelligentTieringAccessTier where
  toXML = Prelude.toXMLText
