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
-- Module      : Network.AWS.MediaLive.Types.Eac3AttenuationControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3AttenuationControl
  ( Eac3AttenuationControl
      ( ..,
        Eac3AttenuationControlATTENUATE3DB,
        Eac3AttenuationControlNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Attenuation Control
newtype Eac3AttenuationControl = Eac3AttenuationControl'
  { fromEac3AttenuationControl ::
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

pattern Eac3AttenuationControlATTENUATE3DB :: Eac3AttenuationControl
pattern Eac3AttenuationControlATTENUATE3DB = Eac3AttenuationControl' "ATTENUATE_3_DB"

pattern Eac3AttenuationControlNONE :: Eac3AttenuationControl
pattern Eac3AttenuationControlNONE = Eac3AttenuationControl' "NONE"

{-# COMPLETE
  Eac3AttenuationControlATTENUATE3DB,
  Eac3AttenuationControlNONE,
  Eac3AttenuationControl'
  #-}

instance Prelude.FromText Eac3AttenuationControl where
  parser = Eac3AttenuationControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AttenuationControl where
  toText (Eac3AttenuationControl' x) = x

instance Prelude.Hashable Eac3AttenuationControl

instance Prelude.NFData Eac3AttenuationControl

instance Prelude.ToByteString Eac3AttenuationControl

instance Prelude.ToQuery Eac3AttenuationControl

instance Prelude.ToHeader Eac3AttenuationControl

instance Prelude.ToJSON Eac3AttenuationControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AttenuationControl where
  parseJSON = Prelude.parseJSONText "Eac3AttenuationControl"
