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
-- Module      : Network.AWS.SSM.RegisterDefaultPatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Defines the default patch baseline for the relevant operating system.
--
--
-- To reset the AWS predefined patch baseline as the default, specify the full patch baseline ARN as the baseline ID value. For example, for CentOS, specify @arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed@ instead of @pb-0574b43a65ea646ed@ .
module Network.AWS.SSM.RegisterDefaultPatchBaseline
  ( -- * Creating a Request
    registerDefaultPatchBaseline,
    RegisterDefaultPatchBaseline,

    -- * Request Lenses
    rdpbBaselineId,

    -- * Destructuring the Response
    registerDefaultPatchBaselineResponse,
    RegisterDefaultPatchBaselineResponse,

    -- * Response Lenses
    rdpbrrsBaselineId,
    rdpbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'registerDefaultPatchBaseline' smart constructor.
newtype RegisterDefaultPatchBaseline = RegisterDefaultPatchBaseline'
  { _rdpbBaselineId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RegisterDefaultPatchBaseline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdpbBaselineId' - The ID of the patch baseline that should be the default patch baseline.
registerDefaultPatchBaseline ::
  -- | 'rdpbBaselineId'
  Text ->
  RegisterDefaultPatchBaseline
registerDefaultPatchBaseline pBaselineId_ =
  RegisterDefaultPatchBaseline'
    { _rdpbBaselineId =
        pBaselineId_
    }

-- | The ID of the patch baseline that should be the default patch baseline.
rdpbBaselineId :: Lens' RegisterDefaultPatchBaseline Text
rdpbBaselineId = lens _rdpbBaselineId (\s a -> s {_rdpbBaselineId = a})

instance AWSRequest RegisterDefaultPatchBaseline where
  type
    Rs RegisterDefaultPatchBaseline =
      RegisterDefaultPatchBaselineResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          RegisterDefaultPatchBaselineResponse'
            <$> (x .?> "BaselineId") <*> (pure (fromEnum s))
      )

instance Hashable RegisterDefaultPatchBaseline

instance NFData RegisterDefaultPatchBaseline

instance ToHeaders RegisterDefaultPatchBaseline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.RegisterDefaultPatchBaseline" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RegisterDefaultPatchBaseline where
  toJSON RegisterDefaultPatchBaseline' {..} =
    object
      (catMaybes [Just ("BaselineId" .= _rdpbBaselineId)])

instance ToPath RegisterDefaultPatchBaseline where
  toPath = const "/"

instance ToQuery RegisterDefaultPatchBaseline where
  toQuery = const mempty

-- | /See:/ 'registerDefaultPatchBaselineResponse' smart constructor.
data RegisterDefaultPatchBaselineResponse = RegisterDefaultPatchBaselineResponse'
  { _rdpbrrsBaselineId ::
      !( Maybe
           Text
       ),
    _rdpbrrsResponseStatus ::
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

-- | Creates a value of 'RegisterDefaultPatchBaselineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdpbrrsBaselineId' - The ID of the default patch baseline.
--
-- * 'rdpbrrsResponseStatus' - -- | The response status code.
registerDefaultPatchBaselineResponse ::
  -- | 'rdpbrrsResponseStatus'
  Int ->
  RegisterDefaultPatchBaselineResponse
registerDefaultPatchBaselineResponse pResponseStatus_ =
  RegisterDefaultPatchBaselineResponse'
    { _rdpbrrsBaselineId =
        Nothing,
      _rdpbrrsResponseStatus =
        pResponseStatus_
    }

-- | The ID of the default patch baseline.
rdpbrrsBaselineId :: Lens' RegisterDefaultPatchBaselineResponse (Maybe Text)
rdpbrrsBaselineId = lens _rdpbrrsBaselineId (\s a -> s {_rdpbrrsBaselineId = a})

-- | -- | The response status code.
rdpbrrsResponseStatus :: Lens' RegisterDefaultPatchBaselineResponse Int
rdpbrrsResponseStatus = lens _rdpbrrsResponseStatus (\s a -> s {_rdpbrrsResponseStatus = a})

instance NFData RegisterDefaultPatchBaselineResponse
