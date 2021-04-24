{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.UserStackAssociationError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UserStackAssociationError where

import Network.AWS.AppStream.Types.UserStackAssociation
import Network.AWS.AppStream.Types.UserStackAssociationErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the error that is returned when a user can’t be associated with or disassociated from a stack.
--
--
--
-- /See:/ 'userStackAssociationError' smart constructor.
data UserStackAssociationError = UserStackAssociationError'
  { _usaeUserStackAssociation ::
      !( Maybe
           UserStackAssociation
       ),
    _usaeErrorMessage ::
      !(Maybe Text),
    _usaeErrorCode ::
      !( Maybe
           UserStackAssociationErrorCode
       )
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserStackAssociationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usaeUserStackAssociation' - Information about the user and associated stack.
--
-- * 'usaeErrorMessage' - The error message for the error that is returned when a user can’t be associated with or disassociated from a stack.
--
-- * 'usaeErrorCode' - The error code for the error that is returned when a user can’t be associated with or disassociated from a stack.
userStackAssociationError ::
  UserStackAssociationError
userStackAssociationError =
  UserStackAssociationError'
    { _usaeUserStackAssociation =
        Nothing,
      _usaeErrorMessage = Nothing,
      _usaeErrorCode = Nothing
    }

-- | Information about the user and associated stack.
usaeUserStackAssociation :: Lens' UserStackAssociationError (Maybe UserStackAssociation)
usaeUserStackAssociation = lens _usaeUserStackAssociation (\s a -> s {_usaeUserStackAssociation = a})

-- | The error message for the error that is returned when a user can’t be associated with or disassociated from a stack.
usaeErrorMessage :: Lens' UserStackAssociationError (Maybe Text)
usaeErrorMessage = lens _usaeErrorMessage (\s a -> s {_usaeErrorMessage = a})

-- | The error code for the error that is returned when a user can’t be associated with or disassociated from a stack.
usaeErrorCode :: Lens' UserStackAssociationError (Maybe UserStackAssociationErrorCode)
usaeErrorCode = lens _usaeErrorCode (\s a -> s {_usaeErrorCode = a})

instance FromJSON UserStackAssociationError where
  parseJSON =
    withObject
      "UserStackAssociationError"
      ( \x ->
          UserStackAssociationError'
            <$> (x .:? "UserStackAssociation")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "ErrorCode")
      )

instance Hashable UserStackAssociationError

instance NFData UserStackAssociationError
