#!/usr/bin/env bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

set -e
read -p "Enter the URL from email: " https://download5.llamameta.net/*?Policy=eyJTdGF0ZW1lbnQiOlt7InVuaXF1ZV9oYXNoIjoieWM2eXlpOHFmdDRucm15eWI4c2p6Mmw2IiwiUmVzb3VyY2UiOiJodHRwczpcL1wvZG93bmxvYWQ1LmxsYW1hbWV0YS5uZXRcLyoiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3MzEwNzU5MjV9fX1dfQ__&Signature=qtCNvxNXDrNa7zTopGSSxvmqKYhT8HYmg121APUmvVkG3y4R7%7ETALZW4gMJPBIMKKvAM1Iq3WuyxRGfwsm5fKX-pUQzBRW91qTCy2nCyvkBoGwspXg0j309ICGXUpJr4%7EyIAs%7EiuN-oPjvS0hlS4xoF6qqpRsdUJUQ7jRxJoMCbxJFrZKdMpmzlcI0JsvCH3cJ6mTl4EfrVduT59uZBCB7Ix4iO9G8w4NYUWeuWfd8JzOLpxgEA68MWp2nvaTKTckQD2%7E2qxgFkbiqavPFUYHFKVOO3jD6qqfUJpGuEee9yk0e6-LIgdb0scDHkvuGCZJrAFWavGVQ0wxnlhLGWMXA__&Key-Pair-Id=K15QRJLYKIFSLZ&Download-Request-ID=982851480551657
echo ""
TARGET_FOLDER="."             # where all files should end up
mkdir -p ${TARGET_FOLDER}

echo "Downloading LICENSE and Acceptable Usage Policy"
wget --continue ${PRESIGNED_URL/'*'/"LICENSE"} -O ${TARGET_FOLDER}"/LICENSE"
wget --continue ${PRESIGNED_URL/'*'/"USE_POLICY.md"} -O ${TARGET_FOLDER}"/USE_POLICY.md"


echo "Downloading tokenizer"
wget --continue ${PRESIGNED_URL/'*'/"llama-guard-2/tokenizer.model"} -O ${TARGET_FOLDER}"/tokenizer.model"
wget --continue ${PRESIGNED_URL/'*'/"llama-guard-2/consolidated.00.pth"} -O ${TARGET_FOLDER}"/consolidated.00.pth"
wget --continue ${PRESIGNED_URL/'*'/"llama-guard-2/params.json"} -O ${TARGET_FOLDER}"/params.json"
