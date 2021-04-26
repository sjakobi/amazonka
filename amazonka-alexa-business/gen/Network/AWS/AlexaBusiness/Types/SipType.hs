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
-- Module      : Network.AWS.AlexaBusiness.Types.SipType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SipType
  ( SipType
      ( ..,
        SipTypeWORK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SipType = SipType'
  { fromSipType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SipTypeWORK :: SipType
pattern SipTypeWORK = SipType' "WORK"

{-# COMPLETE
  SipTypeWORK,
  SipType'
  #-}

instance Prelude.FromText SipType where
  parser = SipType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SipType where
  toText (SipType' x) = x

instance Prelude.Hashable SipType

instance Prelude.NFData SipType

instance Prelude.ToByteString SipType

instance Prelude.ToQuery SipType

instance Prelude.ToHeader SipType

instance Prelude.ToJSON SipType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SipType where
  parseJSON = Prelude.parseJSONText "SipType"
