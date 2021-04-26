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
-- Module      : Network.AWS.S3.Types.ObjectLockRetentionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectLockRetentionMode
  ( ObjectLockRetentionMode
      ( ..,
        ObjectLockRetentionModeCOMPLIANCE,
        ObjectLockRetentionModeGOVERNANCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ObjectLockRetentionMode = ObjectLockRetentionMode'
  { fromObjectLockRetentionMode ::
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

pattern ObjectLockRetentionModeCOMPLIANCE :: ObjectLockRetentionMode
pattern ObjectLockRetentionModeCOMPLIANCE = ObjectLockRetentionMode' "COMPLIANCE"

pattern ObjectLockRetentionModeGOVERNANCE :: ObjectLockRetentionMode
pattern ObjectLockRetentionModeGOVERNANCE = ObjectLockRetentionMode' "GOVERNANCE"

{-# COMPLETE
  ObjectLockRetentionModeCOMPLIANCE,
  ObjectLockRetentionModeGOVERNANCE,
  ObjectLockRetentionMode'
  #-}

instance Prelude.FromText ObjectLockRetentionMode where
  parser = ObjectLockRetentionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectLockRetentionMode where
  toText (ObjectLockRetentionMode' x) = x

instance Prelude.Hashable ObjectLockRetentionMode

instance Prelude.NFData ObjectLockRetentionMode

instance Prelude.ToByteString ObjectLockRetentionMode

instance Prelude.ToQuery ObjectLockRetentionMode

instance Prelude.ToHeader ObjectLockRetentionMode

instance Prelude.FromXML ObjectLockRetentionMode where
  parseXML = Prelude.parseXMLText "ObjectLockRetentionMode"

instance Prelude.ToXML ObjectLockRetentionMode where
  toXML = Prelude.toXMLText
