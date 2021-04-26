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
-- Module      : Network.AWS.MediaLive.Types.AacInputType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacInputType
  ( AacInputType
      ( ..,
        AacInputTypeBROADCASTERMIXEDAD,
        AacInputTypeNORMAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Aac Input Type
newtype AacInputType = AacInputType'
  { fromAacInputType ::
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

pattern AacInputTypeBROADCASTERMIXEDAD :: AacInputType
pattern AacInputTypeBROADCASTERMIXEDAD = AacInputType' "BROADCASTER_MIXED_AD"

pattern AacInputTypeNORMAL :: AacInputType
pattern AacInputTypeNORMAL = AacInputType' "NORMAL"

{-# COMPLETE
  AacInputTypeBROADCASTERMIXEDAD,
  AacInputTypeNORMAL,
  AacInputType'
  #-}

instance Prelude.FromText AacInputType where
  parser = AacInputType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacInputType where
  toText (AacInputType' x) = x

instance Prelude.Hashable AacInputType

instance Prelude.NFData AacInputType

instance Prelude.ToByteString AacInputType

instance Prelude.ToQuery AacInputType

instance Prelude.ToHeader AacInputType

instance Prelude.ToJSON AacInputType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacInputType where
  parseJSON = Prelude.parseJSONText "AacInputType"
