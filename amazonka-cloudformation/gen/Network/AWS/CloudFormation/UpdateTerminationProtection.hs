{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.UpdateTerminationProtection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html Protecting a Stack From Being Deleted> in the /AWS CloudFormation User Guide/ .
--
--
-- For <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html nested stacks> , termination protection is set on the root stack and cannot be changed directly on the nested stack.
module Network.AWS.CloudFormation.UpdateTerminationProtection
  ( -- * Creating a Request
    updateTerminationProtection,
    UpdateTerminationProtection,

    -- * Request Lenses
    utpEnableTerminationProtection,
    utpStackName,

    -- * Destructuring the Response
    updateTerminationProtectionResponse,
    UpdateTerminationProtectionResponse,

    -- * Response Lenses
    utprrsStackId,
    utprrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateTerminationProtection' smart constructor.
data UpdateTerminationProtection = UpdateTerminationProtection'
  { _utpEnableTerminationProtection ::
      !Bool,
    _utpStackName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateTerminationProtection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utpEnableTerminationProtection' - Whether to enable termination protection on the specified stack.
--
-- * 'utpStackName' - The name or unique ID of the stack for which you want to set termination protection.
updateTerminationProtection ::
  -- | 'utpEnableTerminationProtection'
  Bool ->
  -- | 'utpStackName'
  Text ->
  UpdateTerminationProtection
updateTerminationProtection
  pEnableTerminationProtection_
  pStackName_ =
    UpdateTerminationProtection'
      { _utpEnableTerminationProtection =
          pEnableTerminationProtection_,
        _utpStackName = pStackName_
      }

-- | Whether to enable termination protection on the specified stack.
utpEnableTerminationProtection :: Lens' UpdateTerminationProtection Bool
utpEnableTerminationProtection = lens _utpEnableTerminationProtection (\s a -> s {_utpEnableTerminationProtection = a})

-- | The name or unique ID of the stack for which you want to set termination protection.
utpStackName :: Lens' UpdateTerminationProtection Text
utpStackName = lens _utpStackName (\s a -> s {_utpStackName = a})

instance AWSRequest UpdateTerminationProtection where
  type
    Rs UpdateTerminationProtection =
      UpdateTerminationProtectionResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "UpdateTerminationProtectionResult"
      ( \s h x ->
          UpdateTerminationProtectionResponse'
            <$> (x .@? "StackId") <*> (pure (fromEnum s))
      )

instance Hashable UpdateTerminationProtection

instance NFData UpdateTerminationProtection

instance ToHeaders UpdateTerminationProtection where
  toHeaders = const mempty

instance ToPath UpdateTerminationProtection where
  toPath = const "/"

instance ToQuery UpdateTerminationProtection where
  toQuery UpdateTerminationProtection' {..} =
    mconcat
      [ "Action"
          =: ("UpdateTerminationProtection" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "EnableTerminationProtection"
          =: _utpEnableTerminationProtection,
        "StackName" =: _utpStackName
      ]

-- | /See:/ 'updateTerminationProtectionResponse' smart constructor.
data UpdateTerminationProtectionResponse = UpdateTerminationProtectionResponse'
  { _utprrsStackId ::
      !( Maybe
           Text
       ),
    _utprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateTerminationProtectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utprrsStackId' - The unique ID of the stack.
--
-- * 'utprrsResponseStatus' - -- | The response status code.
updateTerminationProtectionResponse ::
  -- | 'utprrsResponseStatus'
  Int ->
  UpdateTerminationProtectionResponse
updateTerminationProtectionResponse pResponseStatus_ =
  UpdateTerminationProtectionResponse'
    { _utprrsStackId =
        Nothing,
      _utprrsResponseStatus =
        pResponseStatus_
    }

-- | The unique ID of the stack.
utprrsStackId :: Lens' UpdateTerminationProtectionResponse (Maybe Text)
utprrsStackId = lens _utprrsStackId (\s a -> s {_utprrsStackId = a})

-- | -- | The response status code.
utprrsResponseStatus :: Lens' UpdateTerminationProtectionResponse Int
utprrsResponseStatus = lens _utprrsResponseStatus (\s a -> s {_utprrsResponseStatus = a})

instance NFData UpdateTerminationProtectionResponse
