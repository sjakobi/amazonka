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
-- Module      : Network.AWS.MediaConvert.Types.InputPsiControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputPsiControl
  ( InputPsiControl
      ( ..,
        InputPsiControlIGNOREPSI,
        InputPsiControlUSEPSI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Set PSI control (InputPsiControl) for transport stream inputs to specify
-- which data the demux process to scans. * Ignore PSI - Scan all PIDs for
-- audio and video. * Use PSI - Scan only PSI data.
newtype InputPsiControl = InputPsiControl'
  { fromInputPsiControl ::
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

pattern InputPsiControlIGNOREPSI :: InputPsiControl
pattern InputPsiControlIGNOREPSI = InputPsiControl' "IGNORE_PSI"

pattern InputPsiControlUSEPSI :: InputPsiControl
pattern InputPsiControlUSEPSI = InputPsiControl' "USE_PSI"

{-# COMPLETE
  InputPsiControlIGNOREPSI,
  InputPsiControlUSEPSI,
  InputPsiControl'
  #-}

instance Prelude.FromText InputPsiControl where
  parser = InputPsiControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputPsiControl where
  toText (InputPsiControl' x) = x

instance Prelude.Hashable InputPsiControl

instance Prelude.NFData InputPsiControl

instance Prelude.ToByteString InputPsiControl

instance Prelude.ToQuery InputPsiControl

instance Prelude.ToHeader InputPsiControl

instance Prelude.ToJSON InputPsiControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputPsiControl where
  parseJSON = Prelude.parseJSONText "InputPsiControl"
