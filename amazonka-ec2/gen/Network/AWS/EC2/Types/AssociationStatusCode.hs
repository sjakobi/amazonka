{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ASCAssociated,
        ASCAssociating,
        ASCAssociationFailed,
        ASCDisassociated,
        ASCDisassociating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AssociationStatusCode
  = AssociationStatusCode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASCAssociated :: AssociationStatusCode
pattern ASCAssociated = AssociationStatusCode' "associated"

pattern ASCAssociating :: AssociationStatusCode
pattern ASCAssociating = AssociationStatusCode' "associating"

pattern ASCAssociationFailed :: AssociationStatusCode
pattern ASCAssociationFailed = AssociationStatusCode' "association-failed"

pattern ASCDisassociated :: AssociationStatusCode
pattern ASCDisassociated = AssociationStatusCode' "disassociated"

pattern ASCDisassociating :: AssociationStatusCode
pattern ASCDisassociating = AssociationStatusCode' "disassociating"

{-# COMPLETE
  ASCAssociated,
  ASCAssociating,
  ASCAssociationFailed,
  ASCDisassociated,
  ASCDisassociating,
  AssociationStatusCode'
  #-}

instance FromText AssociationStatusCode where
  parser = (AssociationStatusCode' . mk) <$> takeText

instance ToText AssociationStatusCode where
  toText (AssociationStatusCode' ci) = original ci

instance Hashable AssociationStatusCode

instance NFData AssociationStatusCode

instance ToByteString AssociationStatusCode

instance ToQuery AssociationStatusCode

instance ToHeader AssociationStatusCode

instance FromXML AssociationStatusCode where
  parseXML = parseXMLText "AssociationStatusCode"
