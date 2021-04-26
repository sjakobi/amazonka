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
-- Module      : Network.AWS.S3.Types.ObjectLockEnabled
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectLockEnabled
  ( ObjectLockEnabled
      ( ..,
        ObjectLockEnabledEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ObjectLockEnabled = ObjectLockEnabled'
  { fromObjectLockEnabled ::
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

pattern ObjectLockEnabledEnabled :: ObjectLockEnabled
pattern ObjectLockEnabledEnabled = ObjectLockEnabled' "Enabled"

{-# COMPLETE
  ObjectLockEnabledEnabled,
  ObjectLockEnabled'
  #-}

instance Prelude.FromText ObjectLockEnabled where
  parser = ObjectLockEnabled' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectLockEnabled where
  toText (ObjectLockEnabled' x) = x

instance Prelude.Hashable ObjectLockEnabled

instance Prelude.NFData ObjectLockEnabled

instance Prelude.ToByteString ObjectLockEnabled

instance Prelude.ToQuery ObjectLockEnabled

instance Prelude.ToHeader ObjectLockEnabled

instance Prelude.FromXML ObjectLockEnabled where
  parseXML = Prelude.parseXMLText "ObjectLockEnabled"

instance Prelude.ToXML ObjectLockEnabled where
  toXML = Prelude.toXMLText
