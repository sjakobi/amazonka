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
-- Module      : Network.AWS.IoT.Types.DeviceCertificateUpdateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DeviceCertificateUpdateAction
  ( DeviceCertificateUpdateAction
      ( ..,
        DeviceCertificateUpdateActionDEACTIVATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceCertificateUpdateAction = DeviceCertificateUpdateAction'
  { fromDeviceCertificateUpdateAction ::
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

pattern DeviceCertificateUpdateActionDEACTIVATE :: DeviceCertificateUpdateAction
pattern DeviceCertificateUpdateActionDEACTIVATE = DeviceCertificateUpdateAction' "DEACTIVATE"

{-# COMPLETE
  DeviceCertificateUpdateActionDEACTIVATE,
  DeviceCertificateUpdateAction'
  #-}

instance Prelude.FromText DeviceCertificateUpdateAction where
  parser = DeviceCertificateUpdateAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceCertificateUpdateAction where
  toText (DeviceCertificateUpdateAction' x) = x

instance Prelude.Hashable DeviceCertificateUpdateAction

instance Prelude.NFData DeviceCertificateUpdateAction

instance Prelude.ToByteString DeviceCertificateUpdateAction

instance Prelude.ToQuery DeviceCertificateUpdateAction

instance Prelude.ToHeader DeviceCertificateUpdateAction

instance Prelude.ToJSON DeviceCertificateUpdateAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeviceCertificateUpdateAction where
  parseJSON = Prelude.parseJSONText "DeviceCertificateUpdateAction"
