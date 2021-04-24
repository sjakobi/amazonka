{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.Computer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.Computer where

import Network.AWS.DirectoryService.Types.Attribute
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a computer account in a directory.
--
--
--
-- /See:/ 'computer' smart constructor.
data Computer = Computer'
  { _cComputerName ::
      !(Maybe Text),
    _cComputerAttributes :: !(Maybe [Attribute]),
    _cComputerId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Computer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cComputerName' - The computer name.
--
-- * 'cComputerAttributes' - An array of 'Attribute' objects containing the LDAP attributes that belong to the computer account.
--
-- * 'cComputerId' - The identifier of the computer.
computer ::
  Computer
computer =
  Computer'
    { _cComputerName = Nothing,
      _cComputerAttributes = Nothing,
      _cComputerId = Nothing
    }

-- | The computer name.
cComputerName :: Lens' Computer (Maybe Text)
cComputerName = lens _cComputerName (\s a -> s {_cComputerName = a})

-- | An array of 'Attribute' objects containing the LDAP attributes that belong to the computer account.
cComputerAttributes :: Lens' Computer [Attribute]
cComputerAttributes = lens _cComputerAttributes (\s a -> s {_cComputerAttributes = a}) . _Default . _Coerce

-- | The identifier of the computer.
cComputerId :: Lens' Computer (Maybe Text)
cComputerId = lens _cComputerId (\s a -> s {_cComputerId = a})

instance FromJSON Computer where
  parseJSON =
    withObject
      "Computer"
      ( \x ->
          Computer'
            <$> (x .:? "ComputerName")
            <*> (x .:? "ComputerAttributes" .!= mempty)
            <*> (x .:? "ComputerId")
      )

instance Hashable Computer

instance NFData Computer
