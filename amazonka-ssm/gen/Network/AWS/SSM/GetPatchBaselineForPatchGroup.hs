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
-- Module      : Network.AWS.SSM.GetPatchBaselineForPatchGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the patch baseline that should be used for the specified patch group.
module Network.AWS.SSM.GetPatchBaselineForPatchGroup
  ( -- * Creating a Request
    getPatchBaselineForPatchGroup,
    GetPatchBaselineForPatchGroup,

    -- * Request Lenses
    gpbfpgOperatingSystem,
    gpbfpgPatchGroup,

    -- * Destructuring the Response
    getPatchBaselineForPatchGroupResponse,
    GetPatchBaselineForPatchGroupResponse,

    -- * Response Lenses
    gpbfpgrrsBaselineId,
    gpbfpgrrsPatchGroup,
    gpbfpgrrsOperatingSystem,
    gpbfpgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getPatchBaselineForPatchGroup' smart constructor.
data GetPatchBaselineForPatchGroup = GetPatchBaselineForPatchGroup'
  { _gpbfpgOperatingSystem ::
      !( Maybe
           OperatingSystem
       ),
    _gpbfpgPatchGroup ::
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

-- | Creates a value of 'GetPatchBaselineForPatchGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbfpgOperatingSystem' - Returns he operating system rule specified for patch groups using the patch baseline.
--
-- * 'gpbfpgPatchGroup' - The name of the patch group whose patch baseline should be retrieved.
getPatchBaselineForPatchGroup ::
  -- | 'gpbfpgPatchGroup'
  Text ->
  GetPatchBaselineForPatchGroup
getPatchBaselineForPatchGroup pPatchGroup_ =
  GetPatchBaselineForPatchGroup'
    { _gpbfpgOperatingSystem =
        Nothing,
      _gpbfpgPatchGroup = pPatchGroup_
    }

-- | Returns he operating system rule specified for patch groups using the patch baseline.
gpbfpgOperatingSystem :: Lens' GetPatchBaselineForPatchGroup (Maybe OperatingSystem)
gpbfpgOperatingSystem = lens _gpbfpgOperatingSystem (\s a -> s {_gpbfpgOperatingSystem = a})

-- | The name of the patch group whose patch baseline should be retrieved.
gpbfpgPatchGroup :: Lens' GetPatchBaselineForPatchGroup Text
gpbfpgPatchGroup = lens _gpbfpgPatchGroup (\s a -> s {_gpbfpgPatchGroup = a})

instance AWSRequest GetPatchBaselineForPatchGroup where
  type
    Rs GetPatchBaselineForPatchGroup =
      GetPatchBaselineForPatchGroupResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetPatchBaselineForPatchGroupResponse'
            <$> (x .?> "BaselineId")
            <*> (x .?> "PatchGroup")
            <*> (x .?> "OperatingSystem")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPatchBaselineForPatchGroup

instance NFData GetPatchBaselineForPatchGroup

instance ToHeaders GetPatchBaselineForPatchGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.GetPatchBaselineForPatchGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPatchBaselineForPatchGroup where
  toJSON GetPatchBaselineForPatchGroup' {..} =
    object
      ( catMaybes
          [ ("OperatingSystem" .=) <$> _gpbfpgOperatingSystem,
            Just ("PatchGroup" .= _gpbfpgPatchGroup)
          ]
      )

instance ToPath GetPatchBaselineForPatchGroup where
  toPath = const "/"

instance ToQuery GetPatchBaselineForPatchGroup where
  toQuery = const mempty

-- | /See:/ 'getPatchBaselineForPatchGroupResponse' smart constructor.
data GetPatchBaselineForPatchGroupResponse = GetPatchBaselineForPatchGroupResponse'
  { _gpbfpgrrsBaselineId ::
      !( Maybe
           Text
       ),
    _gpbfpgrrsPatchGroup ::
      !( Maybe
           Text
       ),
    _gpbfpgrrsOperatingSystem ::
      !( Maybe
           OperatingSystem
       ),
    _gpbfpgrrsResponseStatus ::
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

-- | Creates a value of 'GetPatchBaselineForPatchGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbfpgrrsBaselineId' - The ID of the patch baseline that should be used for the patch group.
--
-- * 'gpbfpgrrsPatchGroup' - The name of the patch group.
--
-- * 'gpbfpgrrsOperatingSystem' - The operating system rule specified for patch groups using the patch baseline.
--
-- * 'gpbfpgrrsResponseStatus' - -- | The response status code.
getPatchBaselineForPatchGroupResponse ::
  -- | 'gpbfpgrrsResponseStatus'
  Int ->
  GetPatchBaselineForPatchGroupResponse
getPatchBaselineForPatchGroupResponse
  pResponseStatus_ =
    GetPatchBaselineForPatchGroupResponse'
      { _gpbfpgrrsBaselineId =
          Nothing,
        _gpbfpgrrsPatchGroup = Nothing,
        _gpbfpgrrsOperatingSystem = Nothing,
        _gpbfpgrrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the patch baseline that should be used for the patch group.
gpbfpgrrsBaselineId :: Lens' GetPatchBaselineForPatchGroupResponse (Maybe Text)
gpbfpgrrsBaselineId = lens _gpbfpgrrsBaselineId (\s a -> s {_gpbfpgrrsBaselineId = a})

-- | The name of the patch group.
gpbfpgrrsPatchGroup :: Lens' GetPatchBaselineForPatchGroupResponse (Maybe Text)
gpbfpgrrsPatchGroup = lens _gpbfpgrrsPatchGroup (\s a -> s {_gpbfpgrrsPatchGroup = a})

-- | The operating system rule specified for patch groups using the patch baseline.
gpbfpgrrsOperatingSystem :: Lens' GetPatchBaselineForPatchGroupResponse (Maybe OperatingSystem)
gpbfpgrrsOperatingSystem = lens _gpbfpgrrsOperatingSystem (\s a -> s {_gpbfpgrrsOperatingSystem = a})

-- | -- | The response status code.
gpbfpgrrsResponseStatus :: Lens' GetPatchBaselineForPatchGroupResponse Int
gpbfpgrrsResponseStatus = lens _gpbfpgrrsResponseStatus (\s a -> s {_gpbfpgrrsResponseStatus = a})

instance NFData GetPatchBaselineForPatchGroupResponse
