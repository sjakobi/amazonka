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
-- Module      : Network.AWS.IoT.Types.CACertificateUpdateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CACertificateUpdateAction
  ( CACertificateUpdateAction
      ( ..,
        CACertificateUpdateActionDEACTIVATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CACertificateUpdateAction = CACertificateUpdateAction'
  { fromCACertificateUpdateAction ::
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

pattern CACertificateUpdateActionDEACTIVATE :: CACertificateUpdateAction
pattern CACertificateUpdateActionDEACTIVATE = CACertificateUpdateAction' "DEACTIVATE"

{-# COMPLETE
  CACertificateUpdateActionDEACTIVATE,
  CACertificateUpdateAction'
  #-}

instance Prelude.FromText CACertificateUpdateAction where
  parser = CACertificateUpdateAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText CACertificateUpdateAction where
  toText (CACertificateUpdateAction' x) = x

instance Prelude.Hashable CACertificateUpdateAction

instance Prelude.NFData CACertificateUpdateAction

instance Prelude.ToByteString CACertificateUpdateAction

instance Prelude.ToQuery CACertificateUpdateAction

instance Prelude.ToHeader CACertificateUpdateAction

instance Prelude.ToJSON CACertificateUpdateAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CACertificateUpdateAction where
  parseJSON = Prelude.parseJSONText "CACertificateUpdateAction"
