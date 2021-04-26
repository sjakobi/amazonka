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
-- Module      : Network.AWS.S3.Types.ExpirationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ExpirationStatus
  ( ExpirationStatus
      ( ..,
        ExpirationStatusDisabled,
        ExpirationStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ExpirationStatus = ExpirationStatus'
  { fromExpirationStatus ::
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

pattern ExpirationStatusDisabled :: ExpirationStatus
pattern ExpirationStatusDisabled = ExpirationStatus' "Disabled"

pattern ExpirationStatusEnabled :: ExpirationStatus
pattern ExpirationStatusEnabled = ExpirationStatus' "Enabled"

{-# COMPLETE
  ExpirationStatusDisabled,
  ExpirationStatusEnabled,
  ExpirationStatus'
  #-}

instance Prelude.FromText ExpirationStatus where
  parser = ExpirationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExpirationStatus where
  toText (ExpirationStatus' x) = x

instance Prelude.Hashable ExpirationStatus

instance Prelude.NFData ExpirationStatus

instance Prelude.ToByteString ExpirationStatus

instance Prelude.ToQuery ExpirationStatus

instance Prelude.ToHeader ExpirationStatus

instance Prelude.FromXML ExpirationStatus where
  parseXML = Prelude.parseXMLText "ExpirationStatus"

instance Prelude.ToXML ExpirationStatus where
  toXML = Prelude.toXMLText
