{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DeleteFleetError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DeleteFleetError where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DeleteFleetErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an EC2 Fleet error.
--
--
--
-- /See:/ 'deleteFleetError' smart constructor.
data DeleteFleetError = DeleteFleetError'
  { _dfeMessage ::
      !(Maybe Text),
    _dfeCode ::
      !(Maybe DeleteFleetErrorCode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteFleetError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfeMessage' - The description for the error code.
--
-- * 'dfeCode' - The error code.
deleteFleetError ::
  DeleteFleetError
deleteFleetError =
  DeleteFleetError'
    { _dfeMessage = Nothing,
      _dfeCode = Nothing
    }

-- | The description for the error code.
dfeMessage :: Lens' DeleteFleetError (Maybe Text)
dfeMessage = lens _dfeMessage (\s a -> s {_dfeMessage = a})

-- | The error code.
dfeCode :: Lens' DeleteFleetError (Maybe DeleteFleetErrorCode)
dfeCode = lens _dfeCode (\s a -> s {_dfeCode = a})

instance FromXML DeleteFleetError where
  parseXML x =
    DeleteFleetError'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable DeleteFleetError

instance NFData DeleteFleetError
