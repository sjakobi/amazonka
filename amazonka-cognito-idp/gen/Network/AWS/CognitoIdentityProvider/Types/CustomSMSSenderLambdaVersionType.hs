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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CustomSMSSenderLambdaVersionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CustomSMSSenderLambdaVersionType
  ( CustomSMSSenderLambdaVersionType
      ( ..,
        CustomSMSSenderLambdaVersionTypeV10
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomSMSSenderLambdaVersionType = CustomSMSSenderLambdaVersionType'
  { fromCustomSMSSenderLambdaVersionType ::
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

pattern CustomSMSSenderLambdaVersionTypeV10 :: CustomSMSSenderLambdaVersionType
pattern CustomSMSSenderLambdaVersionTypeV10 = CustomSMSSenderLambdaVersionType' "V1_0"

{-# COMPLETE
  CustomSMSSenderLambdaVersionTypeV10,
  CustomSMSSenderLambdaVersionType'
  #-}

instance Prelude.FromText CustomSMSSenderLambdaVersionType where
  parser = CustomSMSSenderLambdaVersionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CustomSMSSenderLambdaVersionType where
  toText (CustomSMSSenderLambdaVersionType' x) = x

instance Prelude.Hashable CustomSMSSenderLambdaVersionType

instance Prelude.NFData CustomSMSSenderLambdaVersionType

instance Prelude.ToByteString CustomSMSSenderLambdaVersionType

instance Prelude.ToQuery CustomSMSSenderLambdaVersionType

instance Prelude.ToHeader CustomSMSSenderLambdaVersionType

instance Prelude.ToJSON CustomSMSSenderLambdaVersionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CustomSMSSenderLambdaVersionType where
  parseJSON = Prelude.parseJSONText "CustomSMSSenderLambdaVersionType"
