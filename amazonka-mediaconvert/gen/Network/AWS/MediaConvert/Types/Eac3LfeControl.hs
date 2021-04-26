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
-- Module      : Network.AWS.MediaConvert.Types.Eac3LfeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3LfeControl
  ( Eac3LfeControl
      ( ..,
        Eac3LfeControlLFE,
        Eac3LfeControlNOLFE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When encoding 3\/2 audio, controls whether the LFE channel is enabled
newtype Eac3LfeControl = Eac3LfeControl'
  { fromEac3LfeControl ::
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

pattern Eac3LfeControlLFE :: Eac3LfeControl
pattern Eac3LfeControlLFE = Eac3LfeControl' "LFE"

pattern Eac3LfeControlNOLFE :: Eac3LfeControl
pattern Eac3LfeControlNOLFE = Eac3LfeControl' "NO_LFE"

{-# COMPLETE
  Eac3LfeControlLFE,
  Eac3LfeControlNOLFE,
  Eac3LfeControl'
  #-}

instance Prelude.FromText Eac3LfeControl where
  parser = Eac3LfeControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3LfeControl where
  toText (Eac3LfeControl' x) = x

instance Prelude.Hashable Eac3LfeControl

instance Prelude.NFData Eac3LfeControl

instance Prelude.ToByteString Eac3LfeControl

instance Prelude.ToQuery Eac3LfeControl

instance Prelude.ToHeader Eac3LfeControl

instance Prelude.ToJSON Eac3LfeControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3LfeControl where
  parseJSON = Prelude.parseJSONText "Eac3LfeControl"
