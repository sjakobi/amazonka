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
-- Module      : Network.AWS.SageMaker.Types.TargetPlatformOs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetPlatformOs
  ( TargetPlatformOs
      ( ..,
        TargetPlatformOsANDROID,
        TargetPlatformOsLINUX
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetPlatformOs = TargetPlatformOs'
  { fromTargetPlatformOs ::
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

pattern TargetPlatformOsANDROID :: TargetPlatformOs
pattern TargetPlatformOsANDROID = TargetPlatformOs' "ANDROID"

pattern TargetPlatformOsLINUX :: TargetPlatformOs
pattern TargetPlatformOsLINUX = TargetPlatformOs' "LINUX"

{-# COMPLETE
  TargetPlatformOsANDROID,
  TargetPlatformOsLINUX,
  TargetPlatformOs'
  #-}

instance Prelude.FromText TargetPlatformOs where
  parser = TargetPlatformOs' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetPlatformOs where
  toText (TargetPlatformOs' x) = x

instance Prelude.Hashable TargetPlatformOs

instance Prelude.NFData TargetPlatformOs

instance Prelude.ToByteString TargetPlatformOs

instance Prelude.ToQuery TargetPlatformOs

instance Prelude.ToHeader TargetPlatformOs

instance Prelude.ToJSON TargetPlatformOs where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TargetPlatformOs where
  parseJSON = Prelude.parseJSONText "TargetPlatformOs"
