{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AssociationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AssociationStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AssociationStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the state of a target network association.
--
--
--
-- /See:/ 'associationStatus' smart constructor.
data AssociationStatus = AssociationStatus'
  { _asMessage ::
      !(Maybe Text),
    _asCode ::
      !(Maybe AssociationStatusCode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asMessage' - A message about the status of the target network association, if applicable.
--
-- * 'asCode' - The state of the target network association.
associationStatus ::
  AssociationStatus
associationStatus =
  AssociationStatus'
    { _asMessage = Nothing,
      _asCode = Nothing
    }

-- | A message about the status of the target network association, if applicable.
asMessage :: Lens' AssociationStatus (Maybe Text)
asMessage = lens _asMessage (\s a -> s {_asMessage = a})

-- | The state of the target network association.
asCode :: Lens' AssociationStatus (Maybe AssociationStatusCode)
asCode = lens _asCode (\s a -> s {_asCode = a})

instance FromXML AssociationStatus where
  parseXML x =
    AssociationStatus'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable AssociationStatus

instance NFData AssociationStatus
