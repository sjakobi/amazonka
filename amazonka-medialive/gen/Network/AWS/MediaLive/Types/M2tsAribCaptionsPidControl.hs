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
-- Module      : Network.AWS.MediaLive.Types.M2tsAribCaptionsPidControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAribCaptionsPidControl
  ( M2tsAribCaptionsPidControl
      ( ..,
        M2tsAribCaptionsPidControlAUTO,
        M2tsAribCaptionsPidControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Arib Captions Pid Control
newtype M2tsAribCaptionsPidControl = M2tsAribCaptionsPidControl'
  { fromM2tsAribCaptionsPidControl ::
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

pattern M2tsAribCaptionsPidControlAUTO :: M2tsAribCaptionsPidControl
pattern M2tsAribCaptionsPidControlAUTO = M2tsAribCaptionsPidControl' "AUTO"

pattern M2tsAribCaptionsPidControlUSECONFIGURED :: M2tsAribCaptionsPidControl
pattern M2tsAribCaptionsPidControlUSECONFIGURED = M2tsAribCaptionsPidControl' "USE_CONFIGURED"

{-# COMPLETE
  M2tsAribCaptionsPidControlAUTO,
  M2tsAribCaptionsPidControlUSECONFIGURED,
  M2tsAribCaptionsPidControl'
  #-}

instance Prelude.FromText M2tsAribCaptionsPidControl where
  parser = M2tsAribCaptionsPidControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsAribCaptionsPidControl where
  toText (M2tsAribCaptionsPidControl' x) = x

instance Prelude.Hashable M2tsAribCaptionsPidControl

instance Prelude.NFData M2tsAribCaptionsPidControl

instance Prelude.ToByteString M2tsAribCaptionsPidControl

instance Prelude.ToQuery M2tsAribCaptionsPidControl

instance Prelude.ToHeader M2tsAribCaptionsPidControl

instance Prelude.ToJSON M2tsAribCaptionsPidControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsAribCaptionsPidControl where
  parseJSON = Prelude.parseJSONText "M2tsAribCaptionsPidControl"
