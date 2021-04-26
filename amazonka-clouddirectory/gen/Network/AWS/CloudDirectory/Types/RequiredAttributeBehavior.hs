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
-- Module      : Network.AWS.CloudDirectory.Types.RequiredAttributeBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.RequiredAttributeBehavior
  ( RequiredAttributeBehavior
      ( ..,
        RequiredAttributeBehaviorNOTREQUIRED,
        RequiredAttributeBehaviorREQUIREDALWAYS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RequiredAttributeBehavior = RequiredAttributeBehavior'
  { fromRequiredAttributeBehavior ::
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

pattern RequiredAttributeBehaviorNOTREQUIRED :: RequiredAttributeBehavior
pattern RequiredAttributeBehaviorNOTREQUIRED = RequiredAttributeBehavior' "NOT_REQUIRED"

pattern RequiredAttributeBehaviorREQUIREDALWAYS :: RequiredAttributeBehavior
pattern RequiredAttributeBehaviorREQUIREDALWAYS = RequiredAttributeBehavior' "REQUIRED_ALWAYS"

{-# COMPLETE
  RequiredAttributeBehaviorNOTREQUIRED,
  RequiredAttributeBehaviorREQUIREDALWAYS,
  RequiredAttributeBehavior'
  #-}

instance Prelude.FromText RequiredAttributeBehavior where
  parser = RequiredAttributeBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequiredAttributeBehavior where
  toText (RequiredAttributeBehavior' x) = x

instance Prelude.Hashable RequiredAttributeBehavior

instance Prelude.NFData RequiredAttributeBehavior

instance Prelude.ToByteString RequiredAttributeBehavior

instance Prelude.ToQuery RequiredAttributeBehavior

instance Prelude.ToHeader RequiredAttributeBehavior

instance Prelude.ToJSON RequiredAttributeBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RequiredAttributeBehavior where
  parseJSON = Prelude.parseJSONText "RequiredAttributeBehavior"
