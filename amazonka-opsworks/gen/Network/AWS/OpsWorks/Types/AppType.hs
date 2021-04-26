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
-- Module      : Network.AWS.OpsWorks.Types.AppType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.AppType
  ( AppType
      ( ..,
        AppTypeAwsFlowRuby,
        AppTypeJava,
        AppTypeNodejs,
        AppTypeOther,
        AppTypePhp,
        AppTypeRails,
        AppTypeStatic
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppType = AppType'
  { fromAppType ::
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

pattern AppTypeAwsFlowRuby :: AppType
pattern AppTypeAwsFlowRuby = AppType' "aws-flow-ruby"

pattern AppTypeJava :: AppType
pattern AppTypeJava = AppType' "java"

pattern AppTypeNodejs :: AppType
pattern AppTypeNodejs = AppType' "nodejs"

pattern AppTypeOther :: AppType
pattern AppTypeOther = AppType' "other"

pattern AppTypePhp :: AppType
pattern AppTypePhp = AppType' "php"

pattern AppTypeRails :: AppType
pattern AppTypeRails = AppType' "rails"

pattern AppTypeStatic :: AppType
pattern AppTypeStatic = AppType' "static"

{-# COMPLETE
  AppTypeAwsFlowRuby,
  AppTypeJava,
  AppTypeNodejs,
  AppTypeOther,
  AppTypePhp,
  AppTypeRails,
  AppTypeStatic,
  AppType'
  #-}

instance Prelude.FromText AppType where
  parser = AppType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppType where
  toText (AppType' x) = x

instance Prelude.Hashable AppType

instance Prelude.NFData AppType

instance Prelude.ToByteString AppType

instance Prelude.ToQuery AppType

instance Prelude.ToHeader AppType

instance Prelude.ToJSON AppType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AppType where
  parseJSON = Prelude.parseJSONText "AppType"
