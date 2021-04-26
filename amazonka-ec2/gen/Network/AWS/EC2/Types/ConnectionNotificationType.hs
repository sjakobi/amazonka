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
-- Module      : Network.AWS.EC2.Types.ConnectionNotificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ConnectionNotificationType
  ( ConnectionNotificationType
      ( ..,
        ConnectionNotificationTypeTopic
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ConnectionNotificationType = ConnectionNotificationType'
  { fromConnectionNotificationType ::
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

pattern ConnectionNotificationTypeTopic :: ConnectionNotificationType
pattern ConnectionNotificationTypeTopic = ConnectionNotificationType' "Topic"

{-# COMPLETE
  ConnectionNotificationTypeTopic,
  ConnectionNotificationType'
  #-}

instance Prelude.FromText ConnectionNotificationType where
  parser = ConnectionNotificationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionNotificationType where
  toText (ConnectionNotificationType' x) = x

instance Prelude.Hashable ConnectionNotificationType

instance Prelude.NFData ConnectionNotificationType

instance Prelude.ToByteString ConnectionNotificationType

instance Prelude.ToQuery ConnectionNotificationType

instance Prelude.ToHeader ConnectionNotificationType

instance Prelude.FromXML ConnectionNotificationType where
  parseXML = Prelude.parseXMLText "ConnectionNotificationType"
