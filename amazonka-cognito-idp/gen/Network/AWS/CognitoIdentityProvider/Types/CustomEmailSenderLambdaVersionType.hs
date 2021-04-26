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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CustomEmailSenderLambdaVersionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CustomEmailSenderLambdaVersionType
  ( CustomEmailSenderLambdaVersionType
      ( ..,
        CustomEmailSenderLambdaVersionTypeV10
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomEmailSenderLambdaVersionType = CustomEmailSenderLambdaVersionType'
  { fromCustomEmailSenderLambdaVersionType ::
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

pattern CustomEmailSenderLambdaVersionTypeV10 :: CustomEmailSenderLambdaVersionType
pattern CustomEmailSenderLambdaVersionTypeV10 = CustomEmailSenderLambdaVersionType' "V1_0"

{-# COMPLETE
  CustomEmailSenderLambdaVersionTypeV10,
  CustomEmailSenderLambdaVersionType'
  #-}

instance Prelude.FromText CustomEmailSenderLambdaVersionType where
  parser = CustomEmailSenderLambdaVersionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CustomEmailSenderLambdaVersionType where
  toText (CustomEmailSenderLambdaVersionType' x) = x

instance Prelude.Hashable CustomEmailSenderLambdaVersionType

instance Prelude.NFData CustomEmailSenderLambdaVersionType

instance Prelude.ToByteString CustomEmailSenderLambdaVersionType

instance Prelude.ToQuery CustomEmailSenderLambdaVersionType

instance Prelude.ToHeader CustomEmailSenderLambdaVersionType

instance Prelude.ToJSON CustomEmailSenderLambdaVersionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CustomEmailSenderLambdaVersionType where
  parseJSON = Prelude.parseJSONText "CustomEmailSenderLambdaVersionType"
