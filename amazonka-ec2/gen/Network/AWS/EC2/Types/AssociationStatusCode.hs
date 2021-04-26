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
-- Module      : Network.AWS.EC2.Types.AssociationStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AssociationStatusCode
  ( AssociationStatusCode
      ( ..,
        AssociationStatusCodeAssociated,
        AssociationStatusCodeAssociating,
        AssociationStatusCodeAssociationFailed,
        AssociationStatusCodeDisassociated,
        AssociationStatusCodeDisassociating
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AssociationStatusCode = AssociationStatusCode'
  { fromAssociationStatusCode ::
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

pattern AssociationStatusCodeAssociated :: AssociationStatusCode
pattern AssociationStatusCodeAssociated = AssociationStatusCode' "associated"

pattern AssociationStatusCodeAssociating :: AssociationStatusCode
pattern AssociationStatusCodeAssociating = AssociationStatusCode' "associating"

pattern AssociationStatusCodeAssociationFailed :: AssociationStatusCode
pattern AssociationStatusCodeAssociationFailed = AssociationStatusCode' "association-failed"

pattern AssociationStatusCodeDisassociated :: AssociationStatusCode
pattern AssociationStatusCodeDisassociated = AssociationStatusCode' "disassociated"

pattern AssociationStatusCodeDisassociating :: AssociationStatusCode
pattern AssociationStatusCodeDisassociating = AssociationStatusCode' "disassociating"

{-# COMPLETE
  AssociationStatusCodeAssociated,
  AssociationStatusCodeAssociating,
  AssociationStatusCodeAssociationFailed,
  AssociationStatusCodeDisassociated,
  AssociationStatusCodeDisassociating,
  AssociationStatusCode'
  #-}

instance Prelude.FromText AssociationStatusCode where
  parser = AssociationStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationStatusCode where
  toText (AssociationStatusCode' x) = x

instance Prelude.Hashable AssociationStatusCode

instance Prelude.NFData AssociationStatusCode

instance Prelude.ToByteString AssociationStatusCode

instance Prelude.ToQuery AssociationStatusCode

instance Prelude.ToHeader AssociationStatusCode

instance Prelude.FromXML AssociationStatusCode where
  parseXML = Prelude.parseXMLText "AssociationStatusCode"
