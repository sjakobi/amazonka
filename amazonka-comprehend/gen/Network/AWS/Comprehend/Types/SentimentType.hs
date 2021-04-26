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
-- Module      : Network.AWS.Comprehend.Types.SentimentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.SentimentType
  ( SentimentType
      ( ..,
        SentimentTypeMIXED,
        SentimentTypeNEGATIVE,
        SentimentTypeNEUTRAL,
        SentimentTypePOSITIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SentimentType = SentimentType'
  { fromSentimentType ::
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

pattern SentimentTypeMIXED :: SentimentType
pattern SentimentTypeMIXED = SentimentType' "MIXED"

pattern SentimentTypeNEGATIVE :: SentimentType
pattern SentimentTypeNEGATIVE = SentimentType' "NEGATIVE"

pattern SentimentTypeNEUTRAL :: SentimentType
pattern SentimentTypeNEUTRAL = SentimentType' "NEUTRAL"

pattern SentimentTypePOSITIVE :: SentimentType
pattern SentimentTypePOSITIVE = SentimentType' "POSITIVE"

{-# COMPLETE
  SentimentTypeMIXED,
  SentimentTypeNEGATIVE,
  SentimentTypeNEUTRAL,
  SentimentTypePOSITIVE,
  SentimentType'
  #-}

instance Prelude.FromText SentimentType where
  parser = SentimentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SentimentType where
  toText (SentimentType' x) = x

instance Prelude.Hashable SentimentType

instance Prelude.NFData SentimentType

instance Prelude.ToByteString SentimentType

instance Prelude.ToQuery SentimentType

instance Prelude.ToHeader SentimentType

instance Prelude.FromJSON SentimentType where
  parseJSON = Prelude.parseJSONText "SentimentType"
