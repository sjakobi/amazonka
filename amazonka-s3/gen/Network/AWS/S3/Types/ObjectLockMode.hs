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
-- Module      : Network.AWS.S3.Types.ObjectLockMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectLockMode
  ( ObjectLockMode
      ( ..,
        ObjectLockModeCOMPLIANCE,
        ObjectLockModeGOVERNANCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ObjectLockMode = ObjectLockMode'
  { fromObjectLockMode ::
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

pattern ObjectLockModeCOMPLIANCE :: ObjectLockMode
pattern ObjectLockModeCOMPLIANCE = ObjectLockMode' "COMPLIANCE"

pattern ObjectLockModeGOVERNANCE :: ObjectLockMode
pattern ObjectLockModeGOVERNANCE = ObjectLockMode' "GOVERNANCE"

{-# COMPLETE
  ObjectLockModeCOMPLIANCE,
  ObjectLockModeGOVERNANCE,
  ObjectLockMode'
  #-}

instance Prelude.FromText ObjectLockMode where
  parser = ObjectLockMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectLockMode where
  toText (ObjectLockMode' x) = x

instance Prelude.Hashable ObjectLockMode

instance Prelude.NFData ObjectLockMode

instance Prelude.ToByteString ObjectLockMode

instance Prelude.ToQuery ObjectLockMode

instance Prelude.ToHeader ObjectLockMode

instance Prelude.FromXML ObjectLockMode where
  parseXML = Prelude.parseXMLText "ObjectLockMode"

instance Prelude.ToXML ObjectLockMode where
  toXML = Prelude.toXMLText
