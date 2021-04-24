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
-- Module      : Network.AWS.EC2.DeletePlacementGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement groups> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.DeletePlacementGroup
  ( -- * Creating a Request
    deletePlacementGroup,
    DeletePlacementGroup,

    -- * Request Lenses
    dpgpDryRun,
    dpgpGroupName,

    -- * Destructuring the Response
    deletePlacementGroupResponse,
    DeletePlacementGroupResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deletePlacementGroup' smart constructor.
data DeletePlacementGroup = DeletePlacementGroup'
  { _dpgpDryRun ::
      !(Maybe Bool),
    _dpgpGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletePlacementGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgpDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dpgpGroupName' - The name of the placement group.
deletePlacementGroup ::
  -- | 'dpgpGroupName'
  Text ->
  DeletePlacementGroup
deletePlacementGroup pGroupName_ =
  DeletePlacementGroup'
    { _dpgpDryRun = Nothing,
      _dpgpGroupName = pGroupName_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dpgpDryRun :: Lens' DeletePlacementGroup (Maybe Bool)
dpgpDryRun = lens _dpgpDryRun (\s a -> s {_dpgpDryRun = a})

-- | The name of the placement group.
dpgpGroupName :: Lens' DeletePlacementGroup Text
dpgpGroupName = lens _dpgpGroupName (\s a -> s {_dpgpGroupName = a})

instance AWSRequest DeletePlacementGroup where
  type
    Rs DeletePlacementGroup =
      DeletePlacementGroupResponse
  request = postQuery ec2
  response = receiveNull DeletePlacementGroupResponse'

instance Hashable DeletePlacementGroup

instance NFData DeletePlacementGroup

instance ToHeaders DeletePlacementGroup where
  toHeaders = const mempty

instance ToPath DeletePlacementGroup where
  toPath = const "/"

instance ToQuery DeletePlacementGroup where
  toQuery DeletePlacementGroup' {..} =
    mconcat
      [ "Action" =: ("DeletePlacementGroup" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dpgpDryRun,
        "GroupName" =: _dpgpGroupName
      ]

-- | /See:/ 'deletePlacementGroupResponse' smart constructor.
data DeletePlacementGroupResponse = DeletePlacementGroupResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeletePlacementGroupResponse' with the minimum fields required to make a request.
deletePlacementGroupResponse ::
  DeletePlacementGroupResponse
deletePlacementGroupResponse =
  DeletePlacementGroupResponse'

instance NFData DeletePlacementGroupResponse
