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
-- Module      : Network.AWS.SMS.Types.AppValidationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppValidationStrategy
  ( AppValidationStrategy
      ( ..,
        AppValidationStrategySSM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppValidationStrategy = AppValidationStrategy'
  { fromAppValidationStrategy ::
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

pattern AppValidationStrategySSM :: AppValidationStrategy
pattern AppValidationStrategySSM = AppValidationStrategy' "SSM"

{-# COMPLETE
  AppValidationStrategySSM,
  AppValidationStrategy'
  #-}

instance Prelude.FromText AppValidationStrategy where
  parser = AppValidationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppValidationStrategy where
  toText (AppValidationStrategy' x) = x

instance Prelude.Hashable AppValidationStrategy

instance Prelude.NFData AppValidationStrategy

instance Prelude.ToByteString AppValidationStrategy

instance Prelude.ToQuery AppValidationStrategy

instance Prelude.ToHeader AppValidationStrategy

instance Prelude.ToJSON AppValidationStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AppValidationStrategy where
  parseJSON = Prelude.parseJSONText "AppValidationStrategy"
