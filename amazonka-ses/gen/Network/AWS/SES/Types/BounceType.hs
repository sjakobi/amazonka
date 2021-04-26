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
-- Module      : Network.AWS.SES.Types.BounceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.BounceType
  ( BounceType
      ( ..,
        BounceTypeContentRejected,
        BounceTypeDoesNotExist,
        BounceTypeExceededQuota,
        BounceTypeMessageTooLarge,
        BounceTypeTemporaryFailure,
        BounceTypeUndefined
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BounceType = BounceType'
  { fromBounceType ::
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

pattern BounceTypeContentRejected :: BounceType
pattern BounceTypeContentRejected = BounceType' "ContentRejected"

pattern BounceTypeDoesNotExist :: BounceType
pattern BounceTypeDoesNotExist = BounceType' "DoesNotExist"

pattern BounceTypeExceededQuota :: BounceType
pattern BounceTypeExceededQuota = BounceType' "ExceededQuota"

pattern BounceTypeMessageTooLarge :: BounceType
pattern BounceTypeMessageTooLarge = BounceType' "MessageTooLarge"

pattern BounceTypeTemporaryFailure :: BounceType
pattern BounceTypeTemporaryFailure = BounceType' "TemporaryFailure"

pattern BounceTypeUndefined :: BounceType
pattern BounceTypeUndefined = BounceType' "Undefined"

{-# COMPLETE
  BounceTypeContentRejected,
  BounceTypeDoesNotExist,
  BounceTypeExceededQuota,
  BounceTypeMessageTooLarge,
  BounceTypeTemporaryFailure,
  BounceTypeUndefined,
  BounceType'
  #-}

instance Prelude.FromText BounceType where
  parser = BounceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BounceType where
  toText (BounceType' x) = x

instance Prelude.Hashable BounceType

instance Prelude.NFData BounceType

instance Prelude.ToByteString BounceType

instance Prelude.ToQuery BounceType

instance Prelude.ToHeader BounceType
