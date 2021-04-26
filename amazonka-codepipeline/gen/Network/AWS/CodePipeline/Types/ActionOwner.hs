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
-- Module      : Network.AWS.CodePipeline.Types.ActionOwner
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionOwner
  ( ActionOwner
      ( ..,
        ActionOwnerAWS,
        ActionOwnerCustom,
        ActionOwnerThirdParty
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionOwner = ActionOwner'
  { fromActionOwner ::
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

pattern ActionOwnerAWS :: ActionOwner
pattern ActionOwnerAWS = ActionOwner' "AWS"

pattern ActionOwnerCustom :: ActionOwner
pattern ActionOwnerCustom = ActionOwner' "Custom"

pattern ActionOwnerThirdParty :: ActionOwner
pattern ActionOwnerThirdParty = ActionOwner' "ThirdParty"

{-# COMPLETE
  ActionOwnerAWS,
  ActionOwnerCustom,
  ActionOwnerThirdParty,
  ActionOwner'
  #-}

instance Prelude.FromText ActionOwner where
  parser = ActionOwner' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionOwner where
  toText (ActionOwner' x) = x

instance Prelude.Hashable ActionOwner

instance Prelude.NFData ActionOwner

instance Prelude.ToByteString ActionOwner

instance Prelude.ToQuery ActionOwner

instance Prelude.ToHeader ActionOwner

instance Prelude.ToJSON ActionOwner where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionOwner where
  parseJSON = Prelude.parseJSONText "ActionOwner"
