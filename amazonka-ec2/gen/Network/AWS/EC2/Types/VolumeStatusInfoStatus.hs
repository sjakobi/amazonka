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
-- Module      : Network.AWS.EC2.Types.VolumeStatusInfoStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeStatusInfoStatus
  ( VolumeStatusInfoStatus
      ( ..,
        VolumeStatusInfoStatusImpaired,
        VolumeStatusInfoStatusInsufficientData,
        VolumeStatusInfoStatusOK
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VolumeStatusInfoStatus = VolumeStatusInfoStatus'
  { fromVolumeStatusInfoStatus ::
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

pattern VolumeStatusInfoStatusImpaired :: VolumeStatusInfoStatus
pattern VolumeStatusInfoStatusImpaired = VolumeStatusInfoStatus' "impaired"

pattern VolumeStatusInfoStatusInsufficientData :: VolumeStatusInfoStatus
pattern VolumeStatusInfoStatusInsufficientData = VolumeStatusInfoStatus' "insufficient-data"

pattern VolumeStatusInfoStatusOK :: VolumeStatusInfoStatus
pattern VolumeStatusInfoStatusOK = VolumeStatusInfoStatus' "ok"

{-# COMPLETE
  VolumeStatusInfoStatusImpaired,
  VolumeStatusInfoStatusInsufficientData,
  VolumeStatusInfoStatusOK,
  VolumeStatusInfoStatus'
  #-}

instance Prelude.FromText VolumeStatusInfoStatus where
  parser = VolumeStatusInfoStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText VolumeStatusInfoStatus where
  toText (VolumeStatusInfoStatus' x) = x

instance Prelude.Hashable VolumeStatusInfoStatus

instance Prelude.NFData VolumeStatusInfoStatus

instance Prelude.ToByteString VolumeStatusInfoStatus

instance Prelude.ToQuery VolumeStatusInfoStatus

instance Prelude.ToHeader VolumeStatusInfoStatus

instance Prelude.FromXML VolumeStatusInfoStatus where
  parseXML = Prelude.parseXMLText "VolumeStatusInfoStatus"
