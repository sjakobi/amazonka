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
-- Module      : Network.AWS.RDS.Types.WriteForwardingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.WriteForwardingStatus
  ( WriteForwardingStatus
      ( ..,
        WriteForwardingStatusDisabled,
        WriteForwardingStatusDisabling,
        WriteForwardingStatusEnabled,
        WriteForwardingStatusEnabling,
        WriteForwardingStatusUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WriteForwardingStatus = WriteForwardingStatus'
  { fromWriteForwardingStatus ::
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

pattern WriteForwardingStatusDisabled :: WriteForwardingStatus
pattern WriteForwardingStatusDisabled = WriteForwardingStatus' "disabled"

pattern WriteForwardingStatusDisabling :: WriteForwardingStatus
pattern WriteForwardingStatusDisabling = WriteForwardingStatus' "disabling"

pattern WriteForwardingStatusEnabled :: WriteForwardingStatus
pattern WriteForwardingStatusEnabled = WriteForwardingStatus' "enabled"

pattern WriteForwardingStatusEnabling :: WriteForwardingStatus
pattern WriteForwardingStatusEnabling = WriteForwardingStatus' "enabling"

pattern WriteForwardingStatusUnknown :: WriteForwardingStatus
pattern WriteForwardingStatusUnknown = WriteForwardingStatus' "unknown"

{-# COMPLETE
  WriteForwardingStatusDisabled,
  WriteForwardingStatusDisabling,
  WriteForwardingStatusEnabled,
  WriteForwardingStatusEnabling,
  WriteForwardingStatusUnknown,
  WriteForwardingStatus'
  #-}

instance Prelude.FromText WriteForwardingStatus where
  parser = WriteForwardingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText WriteForwardingStatus where
  toText (WriteForwardingStatus' x) = x

instance Prelude.Hashable WriteForwardingStatus

instance Prelude.NFData WriteForwardingStatus

instance Prelude.ToByteString WriteForwardingStatus

instance Prelude.ToQuery WriteForwardingStatus

instance Prelude.ToHeader WriteForwardingStatus

instance Prelude.FromXML WriteForwardingStatus where
  parseXML = Prelude.parseXMLText "WriteForwardingStatus"
