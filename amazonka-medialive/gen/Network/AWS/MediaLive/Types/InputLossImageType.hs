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
-- Module      : Network.AWS.MediaLive.Types.InputLossImageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossImageType
  ( InputLossImageType
      ( ..,
        InputLossImageTypeCOLOR,
        InputLossImageTypeSLATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Loss Image Type
newtype InputLossImageType = InputLossImageType'
  { fromInputLossImageType ::
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

pattern InputLossImageTypeCOLOR :: InputLossImageType
pattern InputLossImageTypeCOLOR = InputLossImageType' "COLOR"

pattern InputLossImageTypeSLATE :: InputLossImageType
pattern InputLossImageTypeSLATE = InputLossImageType' "SLATE"

{-# COMPLETE
  InputLossImageTypeCOLOR,
  InputLossImageTypeSLATE,
  InputLossImageType'
  #-}

instance Prelude.FromText InputLossImageType where
  parser = InputLossImageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputLossImageType where
  toText (InputLossImageType' x) = x

instance Prelude.Hashable InputLossImageType

instance Prelude.NFData InputLossImageType

instance Prelude.ToByteString InputLossImageType

instance Prelude.ToQuery InputLossImageType

instance Prelude.ToHeader InputLossImageType

instance Prelude.ToJSON InputLossImageType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputLossImageType where
  parseJSON = Prelude.parseJSONText "InputLossImageType"
