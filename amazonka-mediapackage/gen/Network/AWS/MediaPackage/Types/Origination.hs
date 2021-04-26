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
-- Module      : Network.AWS.MediaPackage.Types.Origination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Origination
  ( Origination
      ( ..,
        OriginationALLOW,
        OriginationDENY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Origination = Origination'
  { fromOrigination ::
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

pattern OriginationALLOW :: Origination
pattern OriginationALLOW = Origination' "ALLOW"

pattern OriginationDENY :: Origination
pattern OriginationDENY = Origination' "DENY"

{-# COMPLETE
  OriginationALLOW,
  OriginationDENY,
  Origination'
  #-}

instance Prelude.FromText Origination where
  parser = Origination' Prelude.<$> Prelude.takeText

instance Prelude.ToText Origination where
  toText (Origination' x) = x

instance Prelude.Hashable Origination

instance Prelude.NFData Origination

instance Prelude.ToByteString Origination

instance Prelude.ToQuery Origination

instance Prelude.ToHeader Origination

instance Prelude.ToJSON Origination where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Origination where
  parseJSON = Prelude.parseJSONText "Origination"
