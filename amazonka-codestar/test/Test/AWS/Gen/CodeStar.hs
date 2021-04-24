{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CodeStar
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CodeStar where

import Data.Proxy
import Network.AWS.CodeStar
import Test.AWS.CodeStar.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDisassociateTeamMember $
--             disassociateTeamMember
--
--         , requestDescribeUserProfile $
--             describeUserProfile
--
--         , requestTagProject $
--             tagProject
--
--         , requestListProjects $
--             listProjects
--
--         , requestCreateProject $
--             createProject
--
--         , requestListUserProfiles $
--             listUserProfiles
--
--         , requestUpdateUserProfile $
--             updateUserProfile
--
--         , requestDeleteUserProfile $
--             deleteUserProfile
--
--         , requestListTagsForProject $
--             listTagsForProject
--
--         , requestUpdateTeamMember $
--             updateTeamMember
--
--         , requestUntagProject $
--             untagProject
--
--         , requestListTeamMembers $
--             listTeamMembers
--
--         , requestDeleteProject $
--             deleteProject
--
--         , requestUpdateProject $
--             updateProject
--
--         , requestAssociateTeamMember $
--             associateTeamMember
--
--         , requestCreateUserProfile $
--             createUserProfile
--
--         , requestListResources $
--             listResources
--
--         , requestDescribeProject $
--             describeProject
--
--           ]

--     , testGroup "response"
--         [ responseDisassociateTeamMember $
--             disassociateTeamMemberResponse
--
--         , responseDescribeUserProfile $
--             describeUserProfileResponse
--
--         , responseTagProject $
--             tagProjectResponse
--
--         , responseListProjects $
--             listProjectsResponse
--
--         , responseCreateProject $
--             createProjectResponse
--
--         , responseListUserProfiles $
--             listUserProfilesResponse
--
--         , responseUpdateUserProfile $
--             updateUserProfileResponse
--
--         , responseDeleteUserProfile $
--             deleteUserProfileResponse
--
--         , responseListTagsForProject $
--             listTagsForProjectResponse
--
--         , responseUpdateTeamMember $
--             updateTeamMemberResponse
--
--         , responseUntagProject $
--             untagProjectResponse
--
--         , responseListTeamMembers $
--             listTeamMembersResponse
--
--         , responseDeleteProject $
--             deleteProjectResponse
--
--         , responseUpdateProject $
--             updateProjectResponse
--
--         , responseAssociateTeamMember $
--             associateTeamMemberResponse
--
--         , responseCreateUserProfile $
--             createUserProfileResponse
--
--         , responseListResources $
--             listResourcesResponse
--
--         , responseDescribeProject $
--             describeProjectResponse
--
--           ]
--     ]

-- Requests

requestDisassociateTeamMember :: DisassociateTeamMember -> TestTree
requestDisassociateTeamMember =
  req
    "DisassociateTeamMember"
    "fixture/DisassociateTeamMember.yaml"

requestDescribeUserProfile :: DescribeUserProfile -> TestTree
requestDescribeUserProfile =
  req
    "DescribeUserProfile"
    "fixture/DescribeUserProfile.yaml"

requestTagProject :: TagProject -> TestTree
requestTagProject =
  req
    "TagProject"
    "fixture/TagProject.yaml"

requestListProjects :: ListProjects -> TestTree
requestListProjects =
  req
    "ListProjects"
    "fixture/ListProjects.yaml"

requestCreateProject :: CreateProject -> TestTree
requestCreateProject =
  req
    "CreateProject"
    "fixture/CreateProject.yaml"

requestListUserProfiles :: ListUserProfiles -> TestTree
requestListUserProfiles =
  req
    "ListUserProfiles"
    "fixture/ListUserProfiles.yaml"

requestUpdateUserProfile :: UpdateUserProfile -> TestTree
requestUpdateUserProfile =
  req
    "UpdateUserProfile"
    "fixture/UpdateUserProfile.yaml"

requestDeleteUserProfile :: DeleteUserProfile -> TestTree
requestDeleteUserProfile =
  req
    "DeleteUserProfile"
    "fixture/DeleteUserProfile.yaml"

requestListTagsForProject :: ListTagsForProject -> TestTree
requestListTagsForProject =
  req
    "ListTagsForProject"
    "fixture/ListTagsForProject.yaml"

requestUpdateTeamMember :: UpdateTeamMember -> TestTree
requestUpdateTeamMember =
  req
    "UpdateTeamMember"
    "fixture/UpdateTeamMember.yaml"

requestUntagProject :: UntagProject -> TestTree
requestUntagProject =
  req
    "UntagProject"
    "fixture/UntagProject.yaml"

requestListTeamMembers :: ListTeamMembers -> TestTree
requestListTeamMembers =
  req
    "ListTeamMembers"
    "fixture/ListTeamMembers.yaml"

requestDeleteProject :: DeleteProject -> TestTree
requestDeleteProject =
  req
    "DeleteProject"
    "fixture/DeleteProject.yaml"

requestUpdateProject :: UpdateProject -> TestTree
requestUpdateProject =
  req
    "UpdateProject"
    "fixture/UpdateProject.yaml"

requestAssociateTeamMember :: AssociateTeamMember -> TestTree
requestAssociateTeamMember =
  req
    "AssociateTeamMember"
    "fixture/AssociateTeamMember.yaml"

requestCreateUserProfile :: CreateUserProfile -> TestTree
requestCreateUserProfile =
  req
    "CreateUserProfile"
    "fixture/CreateUserProfile.yaml"

requestListResources :: ListResources -> TestTree
requestListResources =
  req
    "ListResources"
    "fixture/ListResources.yaml"

requestDescribeProject :: DescribeProject -> TestTree
requestDescribeProject =
  req
    "DescribeProject"
    "fixture/DescribeProject.yaml"

-- Responses

responseDisassociateTeamMember :: DisassociateTeamMemberResponse -> TestTree
responseDisassociateTeamMember =
  res
    "DisassociateTeamMemberResponse"
    "fixture/DisassociateTeamMemberResponse.proto"
    codeStar
    (Proxy :: Proxy DisassociateTeamMember)

responseDescribeUserProfile :: DescribeUserProfileResponse -> TestTree
responseDescribeUserProfile =
  res
    "DescribeUserProfileResponse"
    "fixture/DescribeUserProfileResponse.proto"
    codeStar
    (Proxy :: Proxy DescribeUserProfile)

responseTagProject :: TagProjectResponse -> TestTree
responseTagProject =
  res
    "TagProjectResponse"
    "fixture/TagProjectResponse.proto"
    codeStar
    (Proxy :: Proxy TagProject)

responseListProjects :: ListProjectsResponse -> TestTree
responseListProjects =
  res
    "ListProjectsResponse"
    "fixture/ListProjectsResponse.proto"
    codeStar
    (Proxy :: Proxy ListProjects)

responseCreateProject :: CreateProjectResponse -> TestTree
responseCreateProject =
  res
    "CreateProjectResponse"
    "fixture/CreateProjectResponse.proto"
    codeStar
    (Proxy :: Proxy CreateProject)

responseListUserProfiles :: ListUserProfilesResponse -> TestTree
responseListUserProfiles =
  res
    "ListUserProfilesResponse"
    "fixture/ListUserProfilesResponse.proto"
    codeStar
    (Proxy :: Proxy ListUserProfiles)

responseUpdateUserProfile :: UpdateUserProfileResponse -> TestTree
responseUpdateUserProfile =
  res
    "UpdateUserProfileResponse"
    "fixture/UpdateUserProfileResponse.proto"
    codeStar
    (Proxy :: Proxy UpdateUserProfile)

responseDeleteUserProfile :: DeleteUserProfileResponse -> TestTree
responseDeleteUserProfile =
  res
    "DeleteUserProfileResponse"
    "fixture/DeleteUserProfileResponse.proto"
    codeStar
    (Proxy :: Proxy DeleteUserProfile)

responseListTagsForProject :: ListTagsForProjectResponse -> TestTree
responseListTagsForProject =
  res
    "ListTagsForProjectResponse"
    "fixture/ListTagsForProjectResponse.proto"
    codeStar
    (Proxy :: Proxy ListTagsForProject)

responseUpdateTeamMember :: UpdateTeamMemberResponse -> TestTree
responseUpdateTeamMember =
  res
    "UpdateTeamMemberResponse"
    "fixture/UpdateTeamMemberResponse.proto"
    codeStar
    (Proxy :: Proxy UpdateTeamMember)

responseUntagProject :: UntagProjectResponse -> TestTree
responseUntagProject =
  res
    "UntagProjectResponse"
    "fixture/UntagProjectResponse.proto"
    codeStar
    (Proxy :: Proxy UntagProject)

responseListTeamMembers :: ListTeamMembersResponse -> TestTree
responseListTeamMembers =
  res
    "ListTeamMembersResponse"
    "fixture/ListTeamMembersResponse.proto"
    codeStar
    (Proxy :: Proxy ListTeamMembers)

responseDeleteProject :: DeleteProjectResponse -> TestTree
responseDeleteProject =
  res
    "DeleteProjectResponse"
    "fixture/DeleteProjectResponse.proto"
    codeStar
    (Proxy :: Proxy DeleteProject)

responseUpdateProject :: UpdateProjectResponse -> TestTree
responseUpdateProject =
  res
    "UpdateProjectResponse"
    "fixture/UpdateProjectResponse.proto"
    codeStar
    (Proxy :: Proxy UpdateProject)

responseAssociateTeamMember :: AssociateTeamMemberResponse -> TestTree
responseAssociateTeamMember =
  res
    "AssociateTeamMemberResponse"
    "fixture/AssociateTeamMemberResponse.proto"
    codeStar
    (Proxy :: Proxy AssociateTeamMember)

responseCreateUserProfile :: CreateUserProfileResponse -> TestTree
responseCreateUserProfile =
  res
    "CreateUserProfileResponse"
    "fixture/CreateUserProfileResponse.proto"
    codeStar
    (Proxy :: Proxy CreateUserProfile)

responseListResources :: ListResourcesResponse -> TestTree
responseListResources =
  res
    "ListResourcesResponse"
    "fixture/ListResourcesResponse.proto"
    codeStar
    (Proxy :: Proxy ListResources)

responseDescribeProject :: DescribeProjectResponse -> TestTree
responseDescribeProject =
  res
    "DescribeProjectResponse"
    "fixture/DescribeProjectResponse.proto"
    codeStar
    (Proxy :: Proxy DescribeProject)
