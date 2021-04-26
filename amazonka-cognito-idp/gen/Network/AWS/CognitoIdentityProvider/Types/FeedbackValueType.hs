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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.FeedbackValueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.FeedbackValueType
  ( FeedbackValueType
      ( ..,
        FeedbackValueTypeInvalid,
        FeedbackValueTypeValid
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FeedbackValueType = FeedbackValueType'
  { fromFeedbackValueType ::
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

pattern FeedbackValueTypeInvalid :: FeedbackValueType
pattern FeedbackValueTypeInvalid = FeedbackValueType' "Invalid"

pattern FeedbackValueTypeValid :: FeedbackValueType
pattern FeedbackValueTypeValid = FeedbackValueType' "Valid"

{-# COMPLETE
  FeedbackValueTypeInvalid,
  FeedbackValueTypeValid,
  FeedbackValueType'
  #-}

instance Prelude.FromText FeedbackValueType where
  parser = FeedbackValueType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FeedbackValueType where
  toText (FeedbackValueType' x) = x

instance Prelude.Hashable FeedbackValueType

instance Prelude.NFData FeedbackValueType

instance Prelude.ToByteString FeedbackValueType

instance Prelude.ToQuery FeedbackValueType

instance Prelude.ToHeader FeedbackValueType

instance Prelude.ToJSON FeedbackValueType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FeedbackValueType where
  parseJSON = Prelude.parseJSONText "FeedbackValueType"
