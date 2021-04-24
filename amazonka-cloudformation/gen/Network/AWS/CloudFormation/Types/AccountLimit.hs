{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.AccountLimit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.AccountLimit where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The AccountLimit data type.
--
--
-- CloudFormation has the following limits per account:
--
--     * Number of concurrent resources
--
--     * Number of stacks
--
--     * Number of stack outputs
--
--
--
-- For more information about these account limits, and other CloudFormation limits, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html AWS CloudFormation Limits> in the /AWS CloudFormation User Guide/ .
--
--
-- /See:/ 'accountLimit' smart constructor.
data AccountLimit = AccountLimit'
  { _alName ::
      !(Maybe Text),
    _alValue :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alName' - The name of the account limit. Values: @ConcurrentResourcesLimit@ | @StackLimit@ | @StackOutputsLimit@
--
-- * 'alValue' - The value that is associated with the account limit name.
accountLimit ::
  AccountLimit
accountLimit =
  AccountLimit'
    { _alName = Nothing,
      _alValue = Nothing
    }

-- | The name of the account limit. Values: @ConcurrentResourcesLimit@ | @StackLimit@ | @StackOutputsLimit@
alName :: Lens' AccountLimit (Maybe Text)
alName = lens _alName (\s a -> s {_alName = a})

-- | The value that is associated with the account limit name.
alValue :: Lens' AccountLimit (Maybe Int)
alValue = lens _alValue (\s a -> s {_alValue = a})

instance FromXML AccountLimit where
  parseXML x =
    AccountLimit'
      <$> (x .@? "Name") <*> (x .@? "Value")

instance Hashable AccountLimit

instance NFData AccountLimit
